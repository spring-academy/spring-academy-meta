# Frequently Asked Questions

If you cannot find your answer in this FAQ, please [contact us](../contact).

## Table of Contents

**[Certification](#certification)**

- [What is the process to certify?](#get-certified)
- [What is the current version of Spring and Spring Boot used at the 2V0-72.22 exam questions?](#spring-version)

**[Spring Academy Hands-On Labs](#labs)**

- [I'm stuck! Can the Spring Academy team personally help me?](#lab-help)
- [A lab is not working as described in the lab instructions, what should I do?](#lab-instructions)
- [I followed the lab instructions _exactly_ and I'm still getting an unexpected error or feel something is incorrect, what should I do?](#lab-feedback)
- [The lab Editor or Terminal is not working correctly or is a blank or black screen, what should I do?](#lab-reload)
- [Where is the code for the labs?](#lab-code)
- [I've download the lab code and am running it in my own development environment but it is not working as described in the lab instructions, can you help me?](#lab-local)
- [I've reimplemented a lab using my own custom code but it is not working as described in the lab instructions, can you help me?](#lab-custom)

**[General](#general)**

- [Can I download the course slides shown in the videos?](#slides)
- [Do you have courses translated to my native language?](#lang)
- [How can I get involved in the Spring community near me?](#community)

---

<a name="certification"></a>

## Certification

<a name="get-certified"></a>

### What is the process to certify?

The following is the process to complete the [Spring Certified Professional 2024 v2 certification](https://www.broadcom.com/support/education/vmware/certification/spring-certified-pro):

1.  We recommend you complete the Spring Certified Professional Learning Path here at Spring Academy before taking the exam,
    although training is now optional to complete the certification and get your badge.

2.  You will need to pass the [Pearson VUE Exam 2V0-72.22 : Spring Professional Develop](https://www.broadcom.com/support/education/vmware/certification/spring-pro-develop-exam) exam.
    The steps you will need to follow:

    -   Verify your [login account profile](https://profile.broadcom.com/me) First Name and Last Name match your government issued ID you will present to Pearson when you attend the exam.
        If it does not match,
        open a ticket at  https://broadcomcms-software.wolkenservicedesk.com/web-form with the details below and send send the ticket id to the Broadcom Certifications Support Team at global.exams@broadcom.com so they can expedite the process through support for your profile change.

        Email id : <Broadcom Support account email address>
        First Name as per Legal ID: <First Name matching your official ID>
        Last Name as per Legal ID: <Last Name matching your official ID>

    -   We recommend you review the exam study guide.  You can view that [here](https://docs.broadcom.com/doc/vmw-spring-professional-develop-exam-guide).

    -   If you are a previous Spring Academy Pro subscriber member that paid for the subscription prior to April 5th, 2024,
        contact us here at spring.academy@broadcom.com and we'll give you the voucher number and its expiration assuming it is not already expired.
        Otherwise you will need to purchase the exam voucher, you can do that [here](https://us.vmwarecertificationmarketplace.com/exam-vouchers/c/1200070).
        Pick the VMware Certified Exam Voucher option, for $250USD (discounts are not available).

    -   You will need to schedule the exam, providing the voucher you acquired in the previous step.
        Follow the instructions [here](https://docs.broadcom.com/docs/vmware-exam-registration-process).

3.  After you pass the exam,
    you can access your badge (usually within 10 business days of passing the exam),
    using our [Certification Manager application](https://docs.broadcom.com/doc/vmware-welcome-new-certification-manager-platform) through Broadcom.

<a name="spring-version"></a>

### What is the current version of Spring and Spring Boot used at the 2V0-72.22 exam questions?

Spring Boot 2.7 and Spring Framework 5.3

---

<a name="labs"></a>

## Spring Academy Hands-On Labs

<a name="lab-help"></a>

### I'm stuck! Can the Spring Academy team personally help me?

Unfortunately, do the extremely high volume of labs constantly being worked through by amazing Spring community members like you, we cannot provide personalized help.

That said, feel free to let us know what is going on using the **_Give Feedback_** link at the top of each lab.

<a name="lab-instructions"></a>

### A lab is not working as described in the lab instructions, what should I do?

Try, try again.

We rigorously test our labs to make sure that they behave _exactly as described in the lab instructions_.

This is a key point: we only assert that the labs work when the instructions are followed _exactly_. You're on your own if you [implement something differently](#lab-custom) than instructed!

Here are some troubleshooting tips for labs:

- When creating a new file, make sure the file is in the correct directory as described in the instructions. Off-by-one directory errors are common.
- When adding new Java code, make sure to add any `import` statements described in the instructions.
- Read ahead in the instructions or go on to the next page of instructions; sometimes things intentionally fail at first so you can learn how to fix them later.

If you have followed the instructions _exactly_ in our hands-on lab environment, followed these troubleshooting tips, and are still encountering results that do not match the instructions, please let us know using the **_Give Feedback_** link at the top of each lab.

<a name="lab-feedback"></a>

### I followed the lab instructions _exactly_ and I'm still getting an unexpected error or feel something is incorrect, what should I do?

Please make sure you have followed the instructions _exactly_. See _[A lab is not working as described in the lab instructions, what should I do?](#lab-instructions)_

After that, let us know using the **_Give Feedback_** link at the top of each lab.

<a name="lab-reload"></a>

### The lab Editor or Terminal is not working correctly or is a blank or black screen, what should I do?

Try reloading the browser window.

Even though we have an awesome lab environment, it's still running in a web browser on the Internet. When in doubt, reload the browser window.

<a name="lab-code"></a>

### Where is the code for the labs?

You can run the following from your workshop terminal window to list the url of the public codebase github repository associated with the lab:

```bash
cd ~/exercises
git remote -v
```

You can also see a list of codebase [GitHub repositories here](https://github.com/search?q=org%3A+course+code&type=repositories).

In each course code repository you will see individual commits representing the `<start>` and `<end>` of each lab.

You can find the associated `<start>` commit of a lab by running the following in the workshop terminal window:

```bash
cd ~/exercises
git log
```

Look at the latest commit.
You will see the associated `<start>` commit message,
associated with `HEAD`.

<a name="lab-local"></a>

### I've download the lab code and am running it in my own development environment but it is not working as described in the lab instructions, can you help me?

No, unfortunately we cannot.

As you can imagine, there are countless different combinations of development environments, system configurations, operating systems, implementation choices, coding styles, and other variables for any application. Thus, we can only provide support for one combination: our own.

That said, feel free to leave us feedback or contact us about your situation.

Please see the following topics for more information:

- [I'm stuck! Can the Spring Academy team personally help me?](#lab-help)
- [A lab is not working as described in the lab instructions, what should I do?](#lab-instructions)
- [I've reimplemented a lab using my own custom code but it is not working as described in the lab instructions, can you help me?](#lab-custom)

<a name="lab-custom"></a>

### I've reimplemented a lab using my own custom code but it is not working as described in the lab instructions, can you help me?

See [I've download the lab code and am running it in my own development environment but it is not working as described in the lab instructions, can you help me?](#lab-local)

---

<a name="general"></a>

## General Questions

<a name="bug"></a>

### How do I report a bug, typo, inaccurate information, or anything else wrong?

For a lab, please make sure you have followed the instructions _exactly_. See _[A lab is not working as described in the lab instructions, what should I do?](#lab-instructions)_

Please let us know using the **_Give Feedback_** link at the top of each lab or bottom of each written lesson.

If you are using the [contact us](../contact) option,
make sure to include completion information including course, lesson, guide, etc, where the issue occurs.

<a name="slides"></a>

### Can I download the course slides shown in the videos?

Unfortunately we do not provide the video slides for download.

We do provide reference links in the summary for each of the lessons if you need background information.

<a name="lang"></a>

### Do you have courses translated to my native language?

We haven't gone through a localization effort for Spring Academy, and don't have our courses offered in other languages besides English, at this time.

<a name="community"></a>

### How can I get involved in the Spring community near me?

You can visit https://spring.io/community, and you can always check out https://www.springofficehours.io to get involved with the Spring community. There are also local Spring user groups or Java user groups in various cities, which you can search meetup.com for.

If you’re looking to get more involved in making code contributions, you can look at the github issue trackers for any of the projects and try to find an issue that you could help out with by dropping a comment on the issue.
