---
to: app/jobs/<%=name%>/processor.js
unless_exists: true
---

const log = require("../../lib/log");

module.exports = async function(job, done) {
  try {
    log.info("Procesing Job: <%=name%>");
    const { data, progress } = job;
    setTimeout(() => {
      log.success(`<%=name%> - ${job.id} Completed`);
      done();
    }, 1000 * 5);
  } catch (error) {
    log.error(`<%=name%> - ${job.id} Failed`);
    done(error);
  }
};


