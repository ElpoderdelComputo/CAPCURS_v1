import nodemailer from "nodemailer";

export const transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 465,
    secure: true,
    auth: {
        user: "rodriguez.rosales.jose91@gmail.com",
        pass: 'brzrvigtfzqckepa'
    }
});

transporter.verify().then(function () {
    console.log('Ready to send email');
});
