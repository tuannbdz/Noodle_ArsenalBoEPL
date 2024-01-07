#include <iostream>
#include <iomanip>
#include <vector>
#include <algorithm>
#include <cstdint>
#include <cassert>
#include <functional>
#include <complex>

using namespace std;
const long double PI = acos(-1.0L);

struct UInt {
    static const int BASE = (int)1e9;
    static const int WIDTH = 9;

    vector<int> digits;


    UInt(int64_t number = 0);
    UInt(const string& s);
    UInt(const vector<int>& digits);

    UInt& normalize();
    int compare(const UInt& other) const;

    UInt slow_mult(const UInt& other) const;
    UInt fast_mult(const UInt& other) const;
    UInt mult(const UInt& other) const;

    pair<UInt, UInt> div_mod(const UInt& other) const;


    UInt& operator+=(const int num);
    UInt& operator+=(const UInt& other);
    UInt& operator-=(const int num);
    UInt& operator-=(const UInt& other);
    UInt& operator*=(const int num);
    UInt& operator*=(const UInt& other);
    UInt& operator/=(const int num);
    UInt& operator/=(const UInt& other);
    UInt& operator%=(const UInt& other);
};

istream& operator>>(istream&, UInt&);
ostream& operator<<(ostream&, const UInt&);

UInt gcd(UInt, UInt);

UInt operator+(const UInt&, const UInt&);
UInt operator-(const UInt&, const UInt&);
UInt operator*(const UInt&, const UInt&);
UInt operator/(const UInt&, const UInt&);
UInt operator%(const UInt&, const UInt&);

UInt operator+(const UInt&, const int);
UInt operator+(const int, const UInt&);
UInt operator-(const UInt&, const int);
UInt operator*(const UInt&, const int);
UInt operator*(const int, const UInt&);
UInt operator/(const UInt&, const int);

bool operator<(const UInt&, const UInt&);
bool operator>(const UInt&, const UInt&);
bool operator<=(const UInt&, const UInt&);
bool operator>=(const UInt&, const UInt&);
bool operator==(const UInt&, const UInt&);
bool operator!=(const UInt&, const UInt&);

UInt& UInt::normalize() {
    while (digits.back() == 0 && (int)digits.size() > 1) digits.pop_back();
    for (auto d : digits) assert(0 <= d && d < BASE);
    return *this;
}

UInt::UInt(int64_t number) {
    assert(number >= 0);
    do {
        digits.push_back(number % BASE);
        number /= BASE;
    } while (number > 0);
    normalize();
}


UInt::UInt(const vector<int>& digits) : digits(digits) {
    normalize();
}


UInt::UInt(const string& s) {
    const int size = (int)s.size();
    for (int idGroup = 1, nGroups = size / WIDTH; idGroup <= nGroups; ++idGroup) {
        digits.push_back(stoi(s.substr(size-idGroup * WIDTH, WIDTH)));
    }
    if (size % WIDTH != 0) {
        digits.push_back(stoi(s.substr(0, size % WIDTH)));
    }
    normalize();
}

UInt& UInt::operator+=(const int num) {
    assert(num >= 0);
    if (num >= BASE) {
        return *this += UInt(num);
    }
    int rem = num;
    for (int i = 0; rem > 0; ++i) {
        if (i >= (int)digits.size()) digits.push_back(0);
        rem += digits[i];
        if (rem >= BASE) {
            digits[i] = rem - BASE;
            rem = 1;
        } else {
            digits[i] = rem;
            rem = 0;
        }
    }
    return this->normalize();
}

UInt& UInt::operator+=(const UInt& other) {
    if (other.digits.size() == 1u) {
        return *this += other.digits[0];
    }
    const int s1 = this->digits.size();
    const int s2 = other.digits.size();
    int rem = 0;
    for (int i = 0; i < s1 || i < s2 || rem > 0; ++i) {
        int d1 = i < s1 ? this->digits[i] : (digits.push_back(0), 0);
        int d2 = i < s2 ? other.digits[i] : 0;
        rem += d1 + d2;
        auto div = rem / BASE;
        digits[i] = rem - div * BASE;
        rem = div;
    }
    return this->normalize();
}

UInt& UInt::operator-=(const int num) {
    assert(num >= 0);
    if (num >= BASE) {
        return *this -= UInt(num);
    }
    int rem = -num;
    for (int i = 0; i < (int)digits.size() && rem < 0; ++i) {
        rem += digits[i];
        if (rem < 0) {
            digits[i] = rem + BASE;
            rem = -1;
        } else {
            digits[i] = rem;
            rem = 0;
        }
    }
    assert(rem == 0);
    return this->normalize();
}

UInt& UInt::operator-=(const UInt& other) {
    if (other.digits.size() == 1u) {
        return *this -= other.digits[0];
    }
    const int s1 = this->digits.size();
    const int s2 = other.digits.size();
    assert(s1 >= s2);
    int rem = 0;
    for (int i = 0; i < s1; ++i) {
        int d2 = i < s2 ? other.digits[i] : 0;
        rem += this->digits[i] - d2;
        if (rem < 0) {
            digits[i] = rem + BASE;
            rem = -1;
        } else {
            digits[i] = rem;
            rem = 0;
            if (i >= s2) break;
        }
    }
    assert(rem == 0);
    return this->normalize();
}

UInt& UInt::operator*=(const int num) {
    assert(num >= 0);
    if (num >= BASE) {
        return *this *= UInt(num);
    }
    int64_t rem = 0;
    for (auto& d : digits) {
        rem += 1LL * d * num;
        auto div = rem / BASE;
        d = rem - div * BASE;
        rem = div;
    }
    if (rem > 0) digits.push_back(rem);
    return this->normalize();
}

UInt UInt::slow_mult(const UInt& other) const {
    if (other.digits.size() == 1u) {
        return *this * other.digits[0];
    }
    const int s1 = (int)this->digits.size();
    const int s2 = (int)other.digits.size();
    vector<int> temp(s1+s2);
    for (int i = 0; i < s1; ++i) {
        int64_t rem = 0;
        for (int j = 0; j < s2; ++j) {
            rem += temp[i+j] + 1LL * this->digits[i] * other.digits[j];
            auto div = rem / BASE;
            temp[i+j] = rem - div * BASE;
            rem = div;
        }
        if (rem > 0) temp[i+s2] += rem;
    }
    return UInt(temp);
}

UInt UInt::mult(const UInt& other) const {
    return slow_mult(other);
}

UInt& UInt::operator/=(const int num) {
    assert(num > 0);
    if (num >= BASE) {
        return *this /= UInt(num);
    }
    int64_t rem = 0;
    for (int j = (int)digits.size()-1; j >= 0; --j) {
        (rem *= BASE) += digits[j];
        auto div = rem / num;
        digits[j] = div;
        rem -= div * num;
    }
    return this->normalize();
}

int operator%(const UInt& a, const int num) {
    assert(num > 0);
    int64_t rem = 0;
    for (int i = (int)a.digits.size()-1; i >= 0; --i) {
        ((rem *= UInt::BASE) += a.digits[i]) %= num;
    }
    return rem;
}

pair<UInt, UInt> UInt::div_mod(const UInt& other) const {
    if (other.digits.size() == 1u) {
        return {move(*this / other.digits[0]), *this % other.digits[0]};
    }
    const int norm = BASE / (other.digits.back() + 1);
    const UInt a = *this * norm;
    const UInt b = other * norm;
    const int a_size = (int)a.digits.size();
    const int b_size = (int)b.digits.size();
    UInt q, r;
    q.digits.resize(a_size);
    for (int i = a_size - 1; i >= 0; --i) {
        r *= BASE;
        r += a.digits[i];
        int s1 = (int)r.digits.size() <= b_size ? 0 : r.digits[b_size];
        int s2 = (int)r.digits.size() <= b_size - 1 ? 0 : r.digits[b_size - 1];
        int d = (1LL * BASE * s1 + s2) / b.digits.back();
        auto temp = b * d;
        while (r < temp) {
            r += b;
            --d;
        }
        r -= temp;
        q.digits[i] = d;
    }
    return {move(q.normalize()), move(r /= norm)};
}

int UInt::compare(const UInt& other) const {
    if (this->digits.size() > other.digits.size()) return 1;
    if (this->digits.size() < other.digits.size()) return -1;
    for (int i = (int)digits.size()-1; i >= 0; --i) {
        if (this->digits[i] > other.digits[i]) return 1;
        if (this->digits[i] < other.digits[i]) return -1;
    }
    return 0;
}

bool operator< (const UInt& a, const UInt& b) { return a.compare(b) < 0; }
bool operator> (const UInt& a, const UInt& b) { return a.compare(b) > 0; }
bool operator==(const UInt& a, const UInt& b) { return a.compare(b) == 0; }
bool operator<=(const UInt& a, const UInt& b) { return a.compare(b) <= 0; }
bool operator>=(const UInt& a, const UInt& b) { return a.compare(b) >= 0; }
bool operator!=(const UInt& a, const UInt& b) { return a.compare(b) != 0; }

istream& operator>>(istream& is, UInt& number) {
    string s;
    is >> s;
    number = UInt(s);
    return is;
}

ostream& operator<<(ostream& os, const UInt& number) {
    os << number.digits.back();
    for (int i = (int)number.digits.size()-2; i >= 0; --i) {
        os << setw(UInt::WIDTH) << setfill('0') << number.digits[i];
    }
    return os << setfill(' ');
}

UInt operator+(const UInt& a, const UInt& b) {
    return UInt(a) += b;
}

UInt operator-(const UInt& a, const UInt& b) {
    return UInt(a) -= b;
}

UInt operator*(const UInt& a, const UInt& b) {
    return a.mult(b);
}

UInt operator/(const UInt& a, const UInt& b) {
    return a.div_mod(b).first;
}

UInt operator%(const UInt& a, const UInt& b) {
    return a.div_mod(b).second;
}

UInt& UInt::operator*=(const UInt& other) {
    return *this = *this * other;
}

UInt& UInt::operator/=(const UInt& other) {
    return *this = *this / other;
}

UInt& UInt::operator%=(const UInt& other) {
    return *this = *this % other;
}

UInt operator+(const UInt& a, const int b) { return UInt(a) += b; }
UInt operator+(const int a, const UInt& b) { return b * a; }
UInt operator-(const UInt& a, const int b) { return UInt(a) -= b; }
UInt operator*(const UInt& a, const int b) { return UInt(a) *= b; }
UInt operator*(const int a, const UInt& b) { return b * a; }
UInt operator/(const UInt& a, const int b) { return UInt(a) /= b; }

int mapHexToDec(char a){
    if(isdigit(a)) return (int)a - '0';
    return (int)a - 'A' + 10;
}

UInt hexToInt(string s){
    if(s.size() == 0) return -1;
    UInt ans = 0, p = 1;
    for(int i = s.size() - 1; i >= 0; --i, p *= 16){
        ans += p * mapHexToDec(s[i]);
    }
    return ans;
}

/// Miller-Rabin
UInt Pow(UInt a, UInt k, UInt n){
    UInt r = 1;
    a = a % n;
    while(k > 0){
        if (k % 2 != 0) r = r * a % n;
        a = a * a % n;
        k /= 2;
    }
    return r;
}

bool isCompositeNumber(UInt n, UInt a, UInt s, int r){
    UInt x = Pow(a, s, n);
    if(x == 1 || x == n - 1) return 0;
    while(r--){
        x = (x * x) % n;
        if(x == n - 1) return 0;
    }
    return 1;
}

/// returns 512-bit number
UInt random(){
    string s;
    for(int i = 0; i < 128; i++)
    {
        int randomNumber = rand() % 16;
        char c;
        if(randomNumber < 10) c = char(randomNumber + '0');
        else c = char(randomNumber - 9 + 'A');
        s += string(1, c);
    }
    return hexToInt(s);
}

bool MillerRabinTest(UInt n, int k){
    if(n <= 3) return (n == 2);
    if(n % 2 == 0) return 0;
    UInt s = n - 1;
    int r = 0;
    while (s % 2 == 0) {
        s /= 2;
        r++;
    }
    while(k--){
        UInt a = random() % (n - 3) + 2;
        UInt x = Pow(a, s, n);
        if(x == 1 || x == n - 1) continue;
        while(r--){
            x = (x * x) % n;
            if(x == n - 1) break;
            else return 0;
        }
    }
    return 1;
}

int main()
{
    srand(time(0));
    UInt A("7994412097716110548127211733331600522933776757046707649963673962686200838432950239103981070728369599816314646482720706826018360181196843154224748382211019");
    cout << MillerRabinTest(A, 40);
    return 0;
}
