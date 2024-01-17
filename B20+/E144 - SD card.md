\[E144\] SD card

<img src="./E144 - SD card//media/image9.png" style="width:6.27014in;height:1.70592in" alt="C:\Users\Máté\Desktop\Service Manual for BREWIE+\3.9. Hibakódok szerinti szerelési utasítások\Új képek\E144 total.png" />

The SD card is located in the front panel assembly plugged in the Olimex
panel.

Check \[E119\] about how to remove the front panel from the B+.

<img src="./E144 - SD card//media/image8.jpg" style="width:6.26042in;height:3.48958in" alt="C:\Users\Máté\AppData\Local\Microsoft\Windows\INetCache\Content.Word\E144 push.jpg" />

To remove the SD card first gently push it into the card reader, then it
is automatically ejected.

**Rewriting the SD card**

Hardware requirement: card reader, micro SD card to normal SD card
adapter.

Software requirement

1.  Ext2 Volume Manager or similar: to be able to read/write files with
    > Linux file system.

2.  Win 32 DiskImager: to write a raw disk image to a removable device.

Steps of fixing the SD card

1.  Install the required software on a computer.

    1.  After the installation of the Ext2 Volume Manager the computer
        > should recognize the SD card and show it twice (boot and
        > content) in the directory list in Windows on the left panel.

<img src="./E144 - SD card//media/image10.png" style="width:6.26042in;height:3.33333in" />

1.  If Ext2 Volume Manager doesn’t work and the SD card can be read, a
    > Linux computer can be used to access the necessary files on the
    > card.

<!-- -->

1.  It has to be determined whether the SD card is corrupted or not. If
    unsure, consider it corrupted and use a new SD card.

    1.  If the SD card is not corrupted, the Brewie software has to be
        > reinstalled on the original card.

        1.  Before installation, open the content of the card (and not
            > the boot folder) and go to folder *usr/share/brewie*.

            1.  If this is a new machine copy only config.json to the
                > computer. Installation will delete all data from the
                > device.

            2.  If there is already user data copy config.json,
                > settings, and Recipes folder to the computer.
                > Installation will delete all data from the device.

        2.  With the DiskImager software install the Brewie image file
            > on the SD card. It is important to select the boot drive
            > from the dropdown Device list, then click Write.  
            > <img src="./E144 - SD card//media/image5.jpg" style="width:5.02083in;height:3.48958in" alt="C:\Users\Máté\Desktop\Service Manual for BREWIE+\3.9. Hibakódok szerinti szerelési utasítások\Új képek\E144 DiskImager.JPG" />

        3.  After installation was successful open the card and copy the
            > above mentioned files back to the SD card.

    2.  If the SD card is corrupted, the Brewie software has to be
        > installed on a new card.

        1.  With the DiskImager software install the Brewie image file
            > on the SD card.  
            > <img src="./E144 - SD card//media/image5.jpg" style="width:5.02083in;height:3.48958in" alt="C:\Users\Máté\Desktop\Service Manual for BREWIE+\3.9. Hibakódok szerinti szerelési utasítások\Új képek\E144 DiskImager.JPG" />

        2.  Since the original card was damaged it is not possible to
            > get the configuration data. It has to be generated from
            > the factory test logs. Contact Brewie about the next
            > steps.

        3.  After installation, open the content of the card and copy
            > the configuration data to *usr/share/brewie*.

If there is no way to access the SD card via the Ext2 Volume Manager
there is still a chance to copy configuration data on the cards. This
method can be used to save configuration data from the old card if
machine turns on and connects to WIFI.

1.  Start machine and connect it to the same WIFI as the computer.

2.  Connect directly to the machine using WinSCP from the computer (for
    > Windows we recommend this software).

3.  WinSCP starts with a dialog box. Click on the Edit button as shown
    > below:**  
    > **<img src="./E144 - SD card//media/image4.jpg" style="width:6.26772in;height:4.27778in" alt="Program restart_01.JPG" />**  
    > **

4.  Fill the indicated areas. These settings will be good for other
    > machines later, the only value that must be changed later is the
    > IP address.  
    > File protocol: SCP  
    > Port number: 22  
    > User name: root  
    > Password: terminatorottvagymeg  
    > <img src="./E144 - SD card//media/image6.jpg" style="width:6.26772in;height:4.26389in" alt="Program restart_02.JPG" />

5.  You can find the IP address as shown below:  
    > <img src="./E144 - SD card//media/image1.png" style="width:2.06892in;height:3.65104in" alt="01_02.png" />

<img src="./E144 - SD card//media/image2.png" style="width:2.07813in;height:3.66296in" alt="02_02.png" />  
Select the same network the computer uses.  
<img src="./E144 - SD card//media/image3.png" style="width:2.10238in;height:3.71354in" alt="11.png" />  
<img src="./E144 - SD card//media/image7.png" style="width:2.10434in;height:3.71354in" alt="12_01.png" />
