---
to: app/jobs/<%=name%>.js
unless_exists: true
---

export default {
  key: "<%=Name%>",
  options: {},
  processor: "<%=Name%>Processor.js"
};