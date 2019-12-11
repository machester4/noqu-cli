---
to: app/jobs/<%=name%>/index.js
unless_exists: true
---

module.exports = {
  key: "<%=name%>",
  options: {},
};