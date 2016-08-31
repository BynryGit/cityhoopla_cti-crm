from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.contrib.auth import logout
from django.contrib.auth import login
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.cache import cache_control
from django.contrib import auth
from digispaceapp.models import *
import urllib
import smtplib
from smtplib import SMTPException
from captcha_form import CaptchaForm
from django.shortcuts import *
from digispaceapp.models import UserProfile

import urllib2
# importing mysqldb and system packages
import MySQLdb, sys
from django.db.models import Q
from django.db.models import F
from django.db import transaction
import pdb
import csv
import json
#importing exceptions
from django.db import IntegrityError
from captcha_form import CaptchaForm
import operator
from django.db.models import Q
from datetime import date, timedelta
from django.views.decorators.cache import cache_control
# HTTP Response
from django.http import HttpResponse
from django.http import HttpResponseRedirect

# Location
from geopy.geocoders import Nominatim


def view_user_list(request):
    try:
        data = {}
        final_list = []
        try:
            print '===========in function========'
            user_list = ConsumerProfile.objects.all()
            for user_obj in user_list:
                #role_id = user_obj.user_role.role_name
                consumer_id = user_obj.consumer_id
                print '---------id------',consumer_id
                consumer_full_name = user_obj.consumer_full_name
                consumer_contact_no = user_obj.consumer_contact_no
                consumer_email_id = user_obj.consumer_email_id
                latitude = user_obj.latitude
                longitude = user_obj.longitude
                consumer_area = user_obj.consumer_area
                print latitude
                print longitude
                #geolocator = Nominatim()
                #location = geolocator.reverse("18.5063759,73.8050206318")
                #a= location.address
                #b= a.split(',')
                #print b
                #area= b[-5]
                #location = geolocator.reverse("52.509669,, longitude")
                
                #print '===========location========',location
                #area = location.address
                #print area
                view = '<a class="col-md-offset-2 col-md-1" id="'+str(consumer_id)+'"  style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" href="/booking/?consumer_id='+str(consumer_id)+'"><i class="fa fa-eye"></i></a>'
                list = {'consumer_id':consumer_id,'consumer_full_name':consumer_full_name,'consumer_contact_no':consumer_contact_no,'consumer_email_id':consumer_email_id,'consumer_area':consumer_area,'view':view}
                final_list.append(list)
            data = {'success':'true','data':final_list}
        except IntegrityError as e:
            print e
            data = {'success':'false','message':'Error in  loading page. Please try after some time'}
    except MySQLdb.OperationalError, e:
        print e
    except Exception,e:
        print 'Exception ',e
    print data
    return HttpResponse(json.dumps(data), content_type='application/json')


def view_booking_list(request):
    try:
        print '=======request=========',request.GET.get('consumer_id')
        data = {}
        final_list = []
        try:
            user_list = CouponCode.objects.filter(user_id=request.GET.get('consumer_id'))
            print user_list
            for user_obj in user_list:
                #role_id = user_obj.user_role.role_name
                user_id = str(user_obj.user_id)
                advert_id = str(user_obj.advert_id)
                coupon_code = user_obj.coupon_code
                creation_date = str(user_obj.creation_date).split(' ')[0]
                view = '<a class="col-md-offset-2 col-md-1" id="'+str(user_obj)+'"  style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" href=   "/advert_booking/?consumer_id='+str(user_id)+'"><i class="fa fa-eye"></i></a>'
                list = {'user_id':user_id,'advert_id':advert_id,'coupon_code':coupon_code,'creation_date':creation_date,'view':view}
                final_list.append(list)
            data = {'success':'true','data':final_list}
        except IntegrityError as e:
            print e
            data = {'success':'false','message':'Error in  loading page. Please try after some time'}
    except MySQLdb.OperationalError, e:
        print e
    except Exception,e:
        print 'Exception ',e
    print data
    return HttpResponse(json.dumps(data), content_type='application/json')

def subscriber_bookings(request):
    consumer_id = request.GET.get('consumer_id')
    print "bookings",request.GET.get('consumer_id')
    data = {'consumer_id':consumer_id,'username':request.session['login_user']}
    return render(request,'Admin/bookings.html',data)   

@cache_control(no_cache=True, must_revalidate=True, no_store=True)
def sms(request):
    if not request.user.is_authenticated():
        return redirect('backoffice')
    else:    
        data = {'username':request.session['login_user']}
        return render(request,'Admin/sms.html',data)

@cache_control(no_cache=True, must_revalidate=True, no_store=True)
def send_sms(request):
    if not request.user.is_authenticated():
        return redirect('backoffice')
    else:    
        #data = {'username':request.session['login_user']}
        #return render(request,'Admin/send_sms.html',data)
        try:
            data = {}
            final_list = []
            try:
                user_list = ConsumerProfile.objects.all()
                print user_list
                for user_obj in user_list:
                    #role_id = user_obj.user_role.role_name
                    consumer_id = user_obj.consumer_id
                    consumer_full_name = user_obj.consumer_full_name
                    consumer_contact_no =user_obj.consumer_contact_no
                    #view = '<a class="col-md-offset-2 col-md-1" id="'+str(user_obj)+'"  style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" href="/booking/?consumer_id='+str(user_id)+'"><i class="fa fa-eye"></i></a>'
                    list = {'consumer_id':consumer_id,'consumer_full_name':consumer_full_name,'consumer_contact_no':consumer_contact_no}
                    final_list.append(list)
                data = {'success':'true','final_list':final_list,'username':request.session['login_user']}
            except IntegrityError as e:
                print e
                data = {'success':'false','message':'Error in  loading page. Please try after some time','username':request.session['login_user']}
        except MySQLdb.OperationalError, e:
            print e
        except Exception,e:
            print 'Exception ',e
        print data
        return render(request,'Admin/send_sms.html',data)


@cache_control(no_cache=True, must_revalidate=True, no_store=True)
def email(request):
    if not request.user.is_authenticated():
        return redirect('backoffice')
    else:    
        data = {'username':request.session['login_user']}
        return render(request,'Admin/email.html',data)


@cache_control(no_cache=True, must_revalidate=True, no_store=True)
def send_email(request):
    if not request.user.is_authenticated():
        return redirect('backoffice')
    else:    
        #login_user = {'username':request.session['login_user']}
        try:
            data = {}
            final_list = []
            try:
                user_list = ConsumerProfile.objects.all()
                print user_list
                for user_obj in user_list:
                    #role_id = user_obj.user_role.role_name
                    consumer_id = user_obj.consumer_id
                    consumer_full_name = user_obj.consumer_full_name
                    consumer_email_id = user_obj.consumer_email_id
                    #view = '<a class="col-md-offset-2 col-md-1" id="'+str(user_obj)+'"  style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" href="/booking/?consumer_id='+str(user_id)+'"><i class="fa fa-eye"></i></a>'
                    list = {'consumer_id':consumer_id,'consumer_full_name':consumer_full_name,'consumer_email_id':consumer_email_id}
                    final_list.append(list)
                data = {'success':'true','final_list':final_list,'username':request.session['login_user']}
            except IntegrityError as e:
                print e
                data = {'success':'false','message':'Error in  loading page. Please try after some time','username':request.session['login_user']   }
        except MySQLdb.OperationalError, e:
            print e
        except Exception,e:
            print 'Exception ',e
        print data
        return render(request,'Admin/send_email.html',data)


@csrf_exempt
def admin_send_email(request):
    print "=====hi========"
    consumer = request.POST.getlist('consumer')
    consumer01=consumer[0]

    print'================consumer===================',consumer
    print'================consumer===================',consumer01
    consumer_new = consumer01.split(',')

    subject = request.POST.get('subject')
    description = request.POST.get('description') 

    for usernm in consumer_new:
        print '------abc----',usernm
        gmail_user =  "cityhoopla2016"
        gmail_pwd =  "cityhoopla@2016"
        FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
        TO = [usernm]

        #pdb.set_trace()
        try:
            TEXT = description
            SUBJECT = subject
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
    data = {'success':'true','username':request.session['login_user']}
    return HttpResponse(json.dumps(data), content_type='application/json')



@csrf_exempt
def admin_send_sms(request):
    mobile_number_list = request.POST.getlist('consumer')
    number_list = mobile_number_list[0].split(',')
    for number in number_list:
        description = request.POST.get('description')
        authkey = "118994AIG5vJOpg157989f23"
        mobiles = number
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
    data = {'success':'true','username':request.session['login_user']}
    return HttpResponse(json.dumps(data), content_type='application/json')



# @cache_control(no_cache=True, must_revalidate=True, no_store=True)
# def advert_booking(request):
#     if not request.user.is_authenticated():
#         return redirect('backoffice')
#     else:    
#         data = {'username':request.session['login_user']}
#         return render(request,'Admin/advert_booking.html',data)

@cache_control(no_cache=True, must_revalidate=True, no_store=True)
def advert_booking(request):
    if not request.user.is_authenticated():
        return redirect('backoffice')
    else:
        try:
            print '=======request=========',request.GET.get('consumer_id')
            data = {}
            final_list = []
            try:
                user_id = request.GET.get('consumer_id')
                consumer_obj = CouponCode.objects.get(user_id=request.GET.get('consumer_id'))
                coupon_code = consumer_obj.coupon_code
                advert_name = consumer_obj.advert_id.advert_name
                category_name = consumer_obj.advert_id.category_id.category_name
                business_name = consumer_obj.advert_id.supplier_id.business_name
                avail_date = consumer_obj.creation_date.strftime("%Y/%m/%d")
                advert_sub_obj = AdvertSubscriptionMap.objects.get(advert_id=str(consumer_obj.advert_id.advert_id))
                #print "-----------------------",advert_sub_obj
                #expire_date = advert_sub_obj.business_id.end_date.strftime("%Y/%m/%d")
                expire_date =''
                data = {'success':'true','user_id':user_id,'advert_name':advert_name,'coupon_code':coupon_code,
                        'category_name':category_name,'business_name':business_name,
                        'avail_date':avail_date,'expire_date':expire_date}
                print data
            except IntegrityError as e:
                print e
                data = {'success':'false','message':'Error in  loading page. Please try after some time'}
        except MySQLdb.OperationalError, e:
            print e
        except Exception,e:
            print 'Exception ',e
        print data
        return render(request,'Admin/advert_booking.html',data)