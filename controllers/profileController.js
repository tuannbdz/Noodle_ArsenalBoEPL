function renderProfile(req, res) {
  // console.log(req.user);
  const username = req.user.username;
  const avatar_name = req.user.avatar;
  if (req.user.role === "student" || req.user.role === "lecturer") {
    const activeSection = req.query.activeSection;
    if (activeSection)
      return res.render("profile", {
        activeSection: activeSection,
        username: username,
        avatar: avatar_name,
      });
    res.render("profile", {
      activeSection: "account",
      username: username,
      avatar: avatar_name,
    });
  } else if (req.user.role === "admin") {
    const activeSection = req.query.activeSection;
    if (activeSection)
      return res.render("profileAdmin", {
        activeSection: activeSection,
        username: username,
        avatar: avatar_name,
      });
    res.render("profileAdmin", {
      activeSection: "manually",
      username: username,
      avatar: avatar_name,
    });
  }
}

exports.renderProfile = renderProfile;
