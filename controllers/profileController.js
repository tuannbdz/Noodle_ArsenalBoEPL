function renderProfile(req, res) {
  if (req.user.role === "student") {
    const activeSection = req.query.activeSection;
    if (activeSection)
      return res.render("profile", { activeSection: activeSection });
    res.render("profile", { activeSection: "account" });
  } else if (req.user.role === "lecturer") {
    const activeSection = req.query.activeSection;
    if (activeSection)
      return res.render("profile", { activeSection: activeSection });
    res.render("profile", { activeSection: "account" });
  } else if (req.user.role === "admin") {
    const activeSection = req.query.activeSection;
    if (activeSection)
      return res.render("profileAdmin", { activeSection: activeSection });
    res.render("profileAdmin", { activeSection: "manually" });
  }
}

exports.renderProfile = renderProfile;
