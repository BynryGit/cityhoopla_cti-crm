from celery import task
from django.test import TestCase
import time
import datetime
from datetime import datetime
from datetime import timedelta 
import threading
from threading import Timer
#import sched
import urllib
import smtplib
from smtplib import SMTPException
import urllib2

# Create your tests here.

#from consumerapp.models import SimpleCount



@task
def send_to_subscriber(slist):
    i=0
    description=''
    for i in range(len(slist)):
        print '------i-------',i
        a = slist[i]
        sid = a.get('supplier_id')
        bname = a.get('bname')
        phone = a.get('phone')
        address = a.get('address')   
        searchfor = a.get('searchfor')
        area = a.get('area')
        c_name = a.get('c_name')
        c_number = a.get('c_number')
        print '------------',i
        
        if i==1:
            time.sleep(1*60)
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==2:
            time.sleep(2*60)
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==3:
            time.sleep(1*60)
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==4:
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==5:
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==6:
            time.sleep(5*60)
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==7:
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==8:
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        elif i==9:
            time.sleep(2*60)
            send_p1(bname,phone,searchfor,area,c_name,c_number)
        else:
            send_p1(bname,phone,searchfor,area,c_name,c_number)

    

@task
def send_sms_to_consumer(slist):
    description=''
    for i in range(len(slist)):
        a = slist[i]
        sid = a.get('supplier_id')
        bname = a.get('bname')
        phone = a.get('phone')
        address = a.get('address')   
        searchfor = a.get('searchfor')
        area = a.get('area')
        c_name = a.get('c_name')
        c_number = a.get('c_number')
        description=description+str(i+1)+". "+bname+'\n'+address+" "+'\n'+"ph: "+phone+'\n\n'
        

    authkey = "118994AIG5vJOpg157989f23"
    mobiles = c_number
    message = "Hi "+c_name+","+'\n'+"Find info requested by you"+'\n\n'+description+'\n'+"Regards,"+'\n'+"City Hoopla Team"    
    sender = "DGSPCE"
    route = "4"
    country = "91"
    values = {
              'authkey' : authkey,
              'mobiles' : mobiles,
              'message' : message,
              'sender' : sender,
              'route' : route,
              'country' : country
              }

    url = "http://api.msg91.com/api/sendhttp.php"
    postdata = urllib.urlencode(values)
    req = urllib2.Request(url, postdata)
    response = urllib2.urlopen(req)
    output = response.read()
    print output

            
def send_p1(bname,phone,searchfor,area,c_name,c_number):
    print '-----------------------------------------------------------'    
    description = "Following Caller enquired about "+searchfor+'\n'+"Name : "+c_name+" "+'\n'+"Phone Number : "+c_number+'\n'+"Regards,"+'\n'+"City Hoopla Team"
    authkey = "118994AIG5vJOpg157989f23"
    mobiles = phone
    message = description
    sender = "DGSPCE"
    route = "4"
    country = "91"
    values = {
              'authkey' : authkey,
              'mobiles' : mobiles,
              'message' : message,
              'sender' : sender,
              'route' : route,
              'country' : country
              }

    url = "http://api.msg91.com/api/sendhttp.php"
    postdata = urllib.urlencode(values)
    req = urllib2.Request(url, postdata)
    response = urllib2.urlopen(req)
    output = response.read()
    print output
    

@task
def send_email_to_consumer(slist):
    print '============in email function---------'
    i=0
    description=''
    for i in range(len(slist)):
        a = slist[i]
        sid = a.get('supplier_id')
        bname = a.get('bname')
        phone = a.get('phone')
        address = a.get('address')   
        searchfor = a.get('searchfor')
        area = a.get('area')
        c_email = a.get('c_email')
        c_name = a.get('c_name')
        c_number = a.get('c_number')
        description=description+str(i+1)+"."+bname+'\n'+address+" "+'\n'+"ph: "+phone+'\n\n'

    
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = [c_email]
    try:
        TEXT = "Hi "+c_name+","+'\n'+"Find info requested by you"+'\n\n'+description+'\n'+"Regards,"+'\n'+"City Hoopla Team"
        SUBJECT = "City Hoopla Enquiry "
        server = smtplib.SMTP_SSL()
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e
    



