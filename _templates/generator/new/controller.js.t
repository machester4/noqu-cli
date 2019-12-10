
---
to: app/controllers/<%=name%>Controller.js
unless_exists: true
---

import Queue from "../lib/Queue";
import "<%=name%>Job" from "../jobs";

export default async (req, res) => {
    try {
        await Queue.add(<%= Name %>.key, req.body)
        return res.json({ status: "OK" });
    } catch(error) {
        res.status(500);
        return res.json({ error });
    }
};