

<!-- ABOUT THE PROJECT -->
## Project Description

This project involves the process of identifying Error 4xx and 5xx codes in the given log file and triggers and email if there are a total of more than 100 error codes identified

<p align="right">(<a href="#top">back to top</a>)</p>



### CLI tools required

* [wget](https://www.howtogeek.com/281663/how-to-use-wget-the-ultimate-command-line-downloading-tool/#:~:text=macOS%20systems%20do%20not%20come,install%20wget%20in%20the%20Terminal.![image](https://user-images.githubusercontent.com/83501266/145352484-96d97199-de1e-45b7-8a21-a29bafd5d44c.png))
* [grep](https://en.wikipedia.org/wiki/Grep)


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

On your machine, open terminal (For MAC users) or CMD (For Windows users)

### Directory 

Navigate to the directory which you would want to run the shell command (Note that a log file will output to this directory that you are in).
* cd
  ```sh
  cd /Users/jtcy/Desktop/
  ```

### Accessing and making changes to the shell script

1. Download the [emailalert.sh](https://github.com/jaredtcy/Task-1/blob/main/File%20to%20be%20downloaded.zip) file attached and store it in the location where your directory of the terminal is specified in (Click [here](https://github.com/jaredtcy/Task-1/blob/main/emailalert.sh) to view the file content in Github console)
2. Viewing the content of the shell file can be done with this command (Ensure you are in the directory where the shell file is in)
   ```sh
   vi emailalert.sh
   ```
3. Editing the file
   ```sh
   Press the letter "i" 
   ```
4. Saving the file
   ```sh
   ":" followed by a "w"
   ```
5. Exiting the file
   ```sh
   ":" followed by a "q!" 
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

### Running the shell script
Note: Before running the shell script, change the email to your own personal email address

1. Navigate to the directory where the shell script is in and execute the command below 
   ```sh
   ./<path of file/filename> 
   ```
2. A successful run will result in your machine connecting to the url  
   ```sh
   https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs
   ```
4. A .txt log file will then be output on your current directory
5. An email will then be triggered and sent to the email address that you have specified


### Configuring a Cronjob to run this file every hour

1. Access crontab 
   ```sh
   crontab -e
   ```
2. Edit the file
   ```sh
   Press the letter "i"
   ```
3. Key in the configuration required
   ```sh
   0 * * * * <file/path/name>
   ```
For more information on how we can configure different timings, you can refer to this [Documentation](https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/)


<p align="right">(<a href="#top">back to top</a>)</p>
