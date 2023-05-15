// create reusable transporter object using the default SMTP transport
"use strict";
const nodemailer = require("nodemailer");

export const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 465,
  secure: true, // true for 465, false for other ports
  auth: {
    user: "rodriguez.rosales.jose91@gmail.com",
    pass: 'brzrvigtfzqckepa',
  },
});

transporter.verify().then(() => {
  console.log('Ready to send email');
});
