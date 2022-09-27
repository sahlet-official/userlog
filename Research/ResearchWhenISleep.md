# Research on the topic: "When I sleep?"
The research was conducted in September 2022 by [Yurii Kryvonosov](https://github.com/Yura-0)<br>

There is a need to know when the person sleeps.<br>
There is an idea to estimate the moment of the start of sleep monitor some user actions on a smartphone.<br>


Before creating an application, it is worth understanding whether there are analogs on the market right now
and<br>
what functionality they offer.<br>
It is also interesting to see if there are alternative options for meeting this need.<br>

### Analogs on the market of mobile apps

  Below is an analysis of the sleep-related apps currently on the market.<br>
[Sleep Cycle](https://play.google.com/store/apps/details?id=com.northcube.sleepcycle)<br>
+ Functions:
   + A smart alarm clock that wakes up the user at the time interval set by him in the most favorable phase of<br>
    sleep.
   + Determination of the sleep phase using a microphone.
   + Determining the quality of sleep, and maintaining sleep statistics.
   + Record the user's night sounds.
+ Pricing: The program is paid. There is a trial period of 30 days. After being issued
paid subscription of 22$/month.
+ Popularity: This program is very popular. A lot of 10 mln downloads.
+ Pros:
   + Great functionality.
   + Nice interface.
   + The ability to keep statistics and improve the quality of sleep.
   + Available in cooperation with WearOS fitness bracelets.
+ Cons:
   + The application is paid.
   + Receives data via microphone.
   + A smart alarm clock can fail, and wake up much later than the specified time<br>
  
[Sleep Time](https://play.google.com/store/apps/details?id=ru.olegfilimonov.sleeptime)

+ Functions: The application provides a sleep calculator: a person sets the time at which he falls asleep, and<br>
 the application recommends the time for which to set the alarm for the easiest way to fall asleep.
+ Pricing: is free
+ Popularity: 1+ mln downloads.
+ Pros: Allows you to improve sleep, and develop the right mode.
+ Cons: Does not record the time of falling asleep on its own.

[Twilight](https://play.google.com/store/apps/details?id=com.urbandroid.lux)

+ Functions: The application changes the color of the screen to a less irritating one in the evening, which,<br>
 according to the description, makes it easier to fall asleep.
+ Pricing: is free.
+ Popularity: This program is very popular. A lot of 10 mln downloads.
+ Pros: -
+ Cons: Does not record the time of falling asleep on its own.

[Pzizz](https://play.google.com/store/apps/details?id=com.pzizz.android)

+ Functions: The application provides a set of melodies that play at a certain time interval that the user sets.
+ Pricing: is free, but has pricing content. 
+ Popularity: 500000+ downloads.
+ Pros:-
+ Cons: Does not record the time of falling asleep on its own.

[Calm](https://play.google.com/store/apps/details?id=com.calm.android)

+ Functions: The application provides a set of melodies that play at a certain time interval that the user sets.
+ Pricing: is free.
+ Popularity: 10+ mln downloads.
+ Pros: Nice interface.
+ Cons: Does not record the time of falling asleep on its own.
+ Comment:The same as the Pzizz app. A set of melodies for sleep and meditation.<br>
Not suitable.

 [Sleep Monitoring: Sleep Tracker](https://play.google.com/store/apps/details?id=sleeptrakcer.sleeprecorder.sleepapp.sleep)

+ Functions:
   + A smart alarm clock that wakes up the user at the time interval set by him in the most favorable phase of sleep.
   + Determination of the sleep phase using a microphone.
   + Determining the quality of sleep, and maintaining sleep statistics.
   + Record the user's night sounds.
   + Anti-snoring system - with the help of a sound signal stops snoring. 
   + A set of melodies for sleep.
+ Pricing: is free.
+ Popularity: 500000+ downloads.
+ Pros: 
   + Great functionality.
   + Nice interface.
   + The ability to keep statistics and improve the quality of sleep.
   + There are melodies for sleep.
+ Cons:
   + Receives data via microphone.
   + The anti-snoring system can wake you up.

[Sleep as Android](https://play.google.com/store/apps/details?id=com.urbandroid.sleep)

+ Functions:
   + A smart alarm clock that wakes up the user at the time interval set by him in the most favorable phase<br>
   of sleep.
   + Determination of the sleep phase using a microphone.
   + Determining the quality of sleep, and maintaining sleep statistics.
   + Record the user's night sounds.
   + Mini game to fix awakening.
   + A set of melodies for sleep.
+ Pricing: is free.
+ Popularity: 10+ mln downloads.
+ Pros:
  + Great functionality.
   + Nice interface.
   + The ability to keep statistics and improve the quality of sleep.
   + There are melodies for sleep.
   + Mini game to fix awakening.
+ Cons:
  + Receives data via microphone.

### Alternative ways

Also, there is a way that indirectly makes it clear whether the user is sleeping now. All actions on the smartphone<br>
are visible in its system log. This log can be read, filtered, and found the command that is responsible for pressing the<br>
power button. The user can independently determine by the saved time of pressing the button when he was not sleeping.<br>
An application that allows you to read the system log of your android smartphone: [SysLog](https://play.google.com/store/apps/details?id=com.tortel.syslog). But, this method is complicated<br>
due to the non-intuitive interface, and a large number of actions that the user must perform.

### Solving the issue of sleep in other industries
The rail industry offers an interesting path. The locomotive driver on the night shift must press the button<br>
from time to time to notify the system that he is not sleeping. You can pass this method on to the user.<br>
The user sometimes (not often) presses some physical button on the smartphone to make it known that he doesn't sleep.<br>
And, if he does not press the button for a long time, then the smartphone considers that the person has fallen asleep.<br>
Also, a similar method can be applied not to the physical button of the smartphone, but the microphone. Instead of pressing<br>
the button, some previously agreed conditional signal will be represented by the smartphone like 'I still not sleep'.<br>
For example triple tapping on the microphone. Proposed methods can be tested with more accurate methods, like recording and<br>
analyzing video or some other discussed below.

But the most accurate answer to our question can be given by medicine:<br>
The most accurate method currently is through PSG, which stands for Polysomnography, more commonly<br>
known as a “sleep study”. Based on your eye movements (EOG), muscle activity (EMG), heart activity (ECG),<br>
and brain wave activity (EEG), this device can measure the exact time of sleep onset.

The time it takes you to fall asleep is called the sleep onset latency, which is the time from trying to fall asleep<br>
(i.e. closing your eyes attempting to sleep) to NREM 1 sleep, or light sleep, which is the first stage of sleep.<br>
Sleep onset latency is between 5 and 20 minutes in normal-sleeping individuals.

Other methods to determine sleep onset include actigraphy, where an individual wears a device (usually wrist-worn)<br>
that measures acceleration (or movement). These wearables don’t “measure” sleep but predict sleep based on specific<br>
algorithms. Actigraphy is not as accurate as PSG.
[Full medical post](https://play.google.com/store/apps/details?id=com.urbandroid.sleep).<br>
Partially, fitness trackers can perform the function of actigraphy. Some of them can measure not only the pulse but also<br>
body temperature, blood oxygenation, and some more narrow physiological parameters.

___
## Conclusion

It can be seen from the analysis that applications fixing the moment of falling asleep are presented on the market,<br>
and have great success. All of them record the moment of falling asleep either with a microphone or with a fitness<br>
tracker.

From the list of applications, the condition for fixing the moment of falling asleep corresponds to: "Sleep Cycle",<br>
"Sleep Monitoring: Sleep Tracker", and "Sleep as Android". 

Of these, "Sleep as Android" is the best choice. This application has the least number of cons, has great functionality,<br>
and is free.

The medical approach is the most accurate, but at the moment smartphones do not provide the ability to implement<br>
such approaches, due to the lack of compact equipment to track all the necessary physiological parameters.

The railroad method looks like an interesting option. It is quite simple and fully satisfies our request. Sleep applications<br>
that use this method to capture the moment of sleep are not on the market. Perhaps this method will be<br>
chosen as the basis for a future application.


