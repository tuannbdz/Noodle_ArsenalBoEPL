function renderAccountSec(req, res) {
  res.render("profile", { activeSection: "account" });
}
function renderPasswordSec(req, res) {
  res.render("profile", { activeSection: "password" });
}

exports.renderAccountSec = renderAccountSec;

exports.renderPasswordSec = renderPasswordSec;
