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

import operator
from django.db.models import Q
from datetime import date, timedelta

# HTTP Response
from django.http import HttpResponse
from django.http import HttpResponseRedirect
import string
import random
from django.views.decorators.cache import cache_control

# SERVER_URL = "http://192.168.0.180:9888"   

SERVER_URL = "http://52.40.205.128"   

    

@csrf_exempt
def add_service(request):
	try:
		rate_card_obj = ServiceRateCard.objects.get(service_name=request.POST.get('service'),duration=request.POST.get('duration'))

		data={
			'success':'false',
			'message':"Service already exist"
		}
	except Exception,e:
		card_obj = ServiceRateCard(
			service_name=request.POST.get('service'),
			duration = request.POST.get('duration'),
			cost=request.POST.get('price'),
			service_rate_card_status='1',
			service_rate_card_created_date = datetime.now(),
			service_rate_card_updated_date = datetime.now(),
			service_rate_card_created_by = 'Admin',
			service_rate_card_updated_by = 'Admin'
		)
		card_obj.save()
		rate_card_add_mail(card_obj)
		data={
			'success':'true',
			'message':"Service added successfully"
		}
	return HttpResponse(json.dumps(data),content_type='application/json')

def service_list(request):
    print "===IN SERVICE LIST"
    try:
        data = {}
        final_list = []
        try:
            service_list = ServiceRateCard.objects.all()
            for service_obj in service_list:
                service_name = service_obj.service_name
                duration = str(service_obj.duration) + " Days" 
                price = service_obj.cost
                if service_obj.service_rate_card_status == '1':
                    # edit = '<a class="col-md-offset-2 col-md-1" id="'+str(role_id)+'" onclick="edit_user_role(this.id);" style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" href="#edit_subscription"><i class="fa fa-pencil"></i></a>'
                    edit = '<a class="col-md-2" id="'+str(service_obj.service_rate_card_id)+'" onclick="edit_service(this.id);" style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" ><i class="fa fa-pencil"></i></a>'
                    delete = '<a id="'+str(service_obj)+'" onclick="inactive_service(this.id)" style="text-align: center;letter-spacing: 5px;width:15%;" title="Delete"  ><i class="fa fa-trash"></i></a>'
                    status = 'Active'
                    actions =  edit + delete
                else:
                    status = 'Inactive'
                    active = '<a class="col-md-2" id="'+str(service_obj)+'" onclick="active_service(this.id);" style="text-align: center;letter-spacing: 5px;width:15%;" title="Activate" class="edit" data-toggle="modal" href="#edit_subscription"><i class="fa fa-repeat"></i></a>'
                    actions =  active
                list = {'status':status,'service_name':service_name,'actions':actions,'duration':duration,'price':price}
                final_list.append(list)
            data = {'success':'true','data':final_list}
        except IntegrityError as e:
            print e
            data = {'success':'false','message':'Error in  loading page. Please try after some time'}
    except MySQLdb.OperationalError, e:
        print e
    except Exception,e:
        print 'Exception ',e
    return HttpResponse(json.dumps(data), content_type='application/json')  



@csrf_exempt
def delete_service(request):
        try:
            service_obj = ServiceRateCard.objects.get(service_rate_card_id=request.POST.get('service_id'))
            service_obj.service_rate_card_status = '0'
            service_obj.save()
            rate_card_delete_mail(service_obj)
            data = {'message': 'Service Inactivated Successfully', 'success':'true'}

        except IntegrityError as e:
          print e
        except Exception,e:
            print e
        return HttpResponse(json.dumps(data), content_type='application/json')

@csrf_exempt
def active_service(request):
        try:
            service_obj = ServiceRateCard.objects.get(service_rate_card_id=request.POST.get('service_id'))
            service_obj.service_rate_card_status = '1'
            service_obj.save()
            rate_card_activate_mail(service_obj)
            data = {'message': 'Service activated Successfully', 'success':'true'}

        except IntegrityError as e:
          print e
        except Exception,e:
            print e
        print "Final Data: ",data
        return HttpResponse(json.dumps(data), content_type='application/json')

def rate_card_activate_mail(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    try:
        TEXT = "Hi Admin,\nService Rate Card " + str(rate_card_obj.service_name) + " " +" has been activated successfully.\nTo view complete details visit portal and follow - Rate Card -> Service\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Service Rate Card Activated Successfully!"
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e


def rate_card_add_mail(rate_card_obj):
	gmail_user =  "cityhoopla2016"
	gmail_pwd =  "cityhoopla@2016"
	FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
	TO = ['cityhoopla2016@gmail.com']
	try:
		TEXT = "Hi Admin,\nService Rate Card " + str(rate_card_obj.service_name) + " " +" has been added successfully.\nTo view complete details visit portal and follow - Rate Card -> Service\n\nThank You,"+'\n'+"CityHoopla Team"
		SUBJECT = "Service Rate Card Added Successfully!"
		server = smtplib.SMTP("smtp.gmail.com", 587) 
		server.ehlo()
		server.starttls()
		server.login(gmail_user, gmail_pwd)
		message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
		server.sendmail(FROM, TO, message)
		server.quit()
	except SMTPException,e:
		print e



def rate_card_delete_mail(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    #pdb.set_trace()
    try:
        TEXT = "Hi Admin,\nService Rate Card " + str(rate_card_obj.service_name) + " " +"deactivated successfully.\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Service Rate Card Deactivated Successfully!"
        #server = smtplib.SMTP_SSL()
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()

        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e
    return 1       


@csrf_exempt
def add_premium_service(request):
	try:
		rate_card_obj = AdvertRateCard.objects.get(advert_service_name=request.POST.get('premium_service'),duration=request.POST.get('premium_duration'))

		data={
			'success':'false',
			'message':"Service already exist"
		}
	except Exception,e:
		card_obj = AdvertRateCard(
			advert_service_name=request.POST.get('premium_service'),
			duration = request.POST.get('premium_duration'),
			cost=request.POST.get('premium_price'),
			advert_rate_card_status='1',
			advert_rate_card_created_date = datetime.now(),
			advert_rate_card_updated_date = datetime.now(),
			advert_rate_card_created_by = 'Admin',
			advert_rate_card_updated_by = 'Admin'
		)
		card_obj.save()
		premium_rate_card_add_mail(card_obj)
		data={
			'success':'true',
			'message':"Service added successfully"
		}
	return HttpResponse(json.dumps(data),content_type='application/json')


def premium_service_list(request):
	try:
		data = {}
		final_list = []
		try:
			premium_service_list = AdvertRateCard.objects.all()
			for service_obj in premium_service_list:
				service_name = service_obj.advert_service_name
				duration = str(service_obj.duration) + " Days" 
				price = service_obj.cost
				if service_obj.advert_rate_card_status == '1':
					edit = '<a class="col-md-2" id="'+str(service_obj.advert_rate_card_id)+'" onclick="edit_premium_service(this.id);" style="text-align: center;letter-spacing: 5px;width:15%;" title="Edit" class="edit" data-toggle="modal" ><i class="fa fa-pencil"></i></a>'
					delete = '<a id="'+str(service_obj)+'" onclick="inactive_premium_service(this.id)" style="text-align: center;letter-spacing: 5px;width:15%;" title="Delete"  ><i class="fa fa-trash"></i></a>'
					status = 'Active'
					actions =  edit + delete
				else:
					status = 'Inactive'
					active = '<a class="col-md-2" id="'+str(service_obj)+'" onclick="active_premium_service(this.id);" style="text-align: center;letter-spacing: 5px;width:15%;" title="Activate" class="edit" data-toggle="modal" href="#edit_subscription"><i class="fa fa-repeat"></i></a>'
					actions =  active
				list = {'status':status,'service_name':service_name,'actions':actions,'duration':duration,'price':price}
				final_list.append(list)
			data = {'success':'true','data':final_list}
		except IntegrityError as e:
			print e
			data = {'success':'false','message':'Error in  loading page. Please try after some time'}
	except MySQLdb.OperationalError, e:
		print e
	except Exception,e:
		print 'Exception ',e
	return HttpResponse(json.dumps(data), content_type='application/json')		



@csrf_exempt
def delete_premium_service(request):
        try:
            service_obj = AdvertRateCard.objects.get(advert_rate_card_id=request.POST.get('premium_service_id'))
            service_obj.advert_rate_card_status = '0'
            service_obj.save()
            premium_rate_card_delete_mail(service_obj)
            data = {'message': 'Service Inactivated Successfully', 'success':'true'}

        except IntegrityError as e:
          print e
        except Exception,e:
            print e
        return HttpResponse(json.dumps(data), content_type='application/json')	


def premium_rate_card_add_mail(rate_card_obj):
	gmail_user =  "cityhoopla2016"
	gmail_pwd =  "cityhoopla@2016"
	FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
	TO = ['cityhoopla2016@gmail.com']
	try:
		TEXT = "Hi Admin,\nPremium Service Rate Card " + str(rate_card_obj.advert_service_name) + " " +" has been added successfully.\nTo view complete details visit portal and follow - Rate Card -> Premium Service\n\nThank You,"+'\n'+"CityHoopla Team"
		SUBJECT = "Premium Service Rate Card Added Successfully!"
		server = smtplib.SMTP("smtp.gmail.com", 587) 
		server.ehlo()
		server.starttls()
		server.login(gmail_user, gmail_pwd)
		message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
		server.sendmail(FROM, TO, message)
		server.quit()
	except SMTPException,e:
		print e



def premium_rate_card_delete_mail(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    #pdb.set_trace()
    try:
        TEXT = "Hi Admin,\nService Rate Card " + str(rate_card_obj.advert_service_name) + " " +"deactivated successfully.\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Premium Service Rate Card Deactivated Successfully!"
        #server = smtplib.SMTP_SSL()
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()

        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e
    return 1       



@csrf_exempt
def active_premium_service(request):
        try:
            service_obj = AdvertRateCard.objects.get(advert_rate_card_id=request.POST.get('premium_service_id'))
            service_obj.advert_rate_card_status = '1'
            service_obj.save()
            advert_rate_card_activate_mail(service_obj)
            data = {'message': 'Premium Service activated Successfully', 'success':'true'}

        except IntegrityError as e:
          print e
        except Exception,e:
            print e
        print "Final Data: ",data
        return HttpResponse(json.dumps(data), content_type='application/json')


def advert_rate_card_activate_mail(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    try:
        TEXT = "Hi Admin,\nAdvert Rate Card " + str(rate_card_obj.advert_service_name) + " " +" has been activated successfully.\nTo view complete details visit portal and follow - Rate Card ->Premium Service\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Premium Service Rate Card Activated Successfully!"
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e



@csrf_exempt
def edit_service(request):
    try:
        data = {}
        final_list = []
        try:
            if request.method == "GET":
                print request
                service_obj = ServiceRateCard.objects.get(service_rate_card_id=request.GET.get('service_id'))
               
                data = {'success':'true','service':service_obj.service_name,'rate_card_service_id':str(service_obj.service_rate_card_id),'duration':str(service_obj.duration),'price':str(service_obj.cost)}
                print "=====Service Info====",data
        except IntegrityError as e:
            print e
            data = {'success':'false','message':'Error in  loading page. Please try after some time'}

    except MySQLdb.OperationalError, e:
        print e

    except Exception,e:
        print 'Exception ',e
    print data    
    return HttpResponse(json.dumps(data),content_type='application/json')     


@csrf_exempt
def edit_premium_service(request):
    try:
        data = {}
        final_list = []
        try:
            if request.method == "GET":
                print request
                service_obj = AdvertRateCard.objects.get(advert_rate_card_id=request.GET.get('service_id'))
               
                data = {'success':'true','service':service_obj.advert_service_name,'premium_rate_card_service_id':str(service_obj.advert_rate_card_id),'duration':str(service_obj.duration),'price':str(service_obj.cost)}
                print "=====Service Info====",data
        except IntegrityError as e:
            print e
            data = {'success':'false','message':'Error in  loading page. Please try after some time'}

    except MySQLdb.OperationalError, e:
        print e

    except Exception,e:
        print 'Exception ',e
    print data    
    return HttpResponse(json.dumps(data),content_type='application/json')    


@csrf_exempt
def update_service(request):
    
    try:
        print request.POST
        data = {}
        service_obj = request.POST.get('service_name')
        service_rate_card_id = request.POST.get('rate_card_service_id')
        try:
            service_object=ServiceRateCard.objects.get(service_name=request.POST.get('service'),duration=request.POST.get('duration'),service_rate_card_status=1)
            if(str(service_rate_card_id)==str(service_object)):
                service_object=ServiceRateCard.objects.get(service_name=request.POST.get('service'),duration=request.POST.get('duration'),service_rate_card_status=1)
                service_object.service_name=request.POST.get('service')
                service_object.duration = request.POST.get('duration')
                service_object.cost=request.POST.get('price')
                service_object.service_rate_card_status='1'
                service_object.service_rate_card_updated_date = datetime.now()
                service_object.service_rate_card_updated_by = 'Admin'
                service_object.save()
                
                data = {'success':'true'}
                update_service_rate_card(service_object)
            else:
                data = {'success':'false'}
        except:
            service_object=ServiceRateCard.objects.get(service_rate_card_id=service_rate_card_id)
            service_object.service_name=request.POST.get('service')
            service_object.duration = request.POST.get('duration')
            service_object.cost=request.POST.get('price')
            service_object.service_rate_card_status='1'
            service_object.service_rate_card_updated_date = datetime.now()
            service_object.service_rate_card_updated_by = 'Admin'
            service_object.save()
            update_service_rate_card(service_object)
            data={
            'success':'true',
            }
    except Exception, e:
            data={
                'success':'false',
                'message':str(e)
            }
    print '========data====================',data        
    return HttpResponse(json.dumps(data),content_type='application/json')  




def update_service_rate_card(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    #pdb.set_trace()
    try:
        TEXT = "Hi Admin,\nService Rate Card " + str(rate_card_obj.service_name) + " " +"updated successfully.\nTo view complete details visit portal and follow - Rate Card -> Service\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Service Rate Card Updated Successfully!"
        #server = smtplib.SMTP_SSL()
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()

        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e
    return 1   




@csrf_exempt
def update_premium_service(request):
    #pdb.set_trace()
    print "========In update Premium Service"
    try:
        print request.POST
        data = {}
        service_obj = request.POST.get('premium_service')
        advert_rate_card_id = request.POST.get('premium_rate_card_service_id')
        print "===advert_rate_card_id",advert_rate_card_id
        try:
            print "IN TRY OF UPDATE"
            service_object=AdvertRateCard.objects.get(advert_service_name=request.POST.get('premium_service'),duration=request.POST.get('premium_duration'),advert_rate_card_status=1)
            print "====service_object",service_object
            if(str(advert_rate_card_id)==str(service_object)):
                print "=====IN IF"
                service_object=AdvertRateCard.objects.get(advert_service_name=request.POST.get('premium_service'),duration=request.POST.get('premium_duration'),advert_rate_card_status=1)
                service_object.advert_service_name=request.POST.get('premium_service')
                service_object.duration = request.POST.get('premium_duration')
                service_object.cost=request.POST.get('premium_price')
                service_object.advert_rate_card_status='1'
                service_object.advert_rate_card_updated_date = datetime.now()
                service_object.advert_rate_card_updated_by = 'Admin'
                service_object.save()
                update_advert_rate_card(service_object)
                data = {'success':'true'}
            else:
                print '======in else======='
                data = {'success':'false'}
        except:
            print "IN EXCEPTION"
            service_object=AdvertRateCard.objects.get(advert_rate_card_id=advert_rate_card_id)
            service_object.advert_service_name=request.POST.get('premium_service')
            service_object.duration = request.POST.get('premium_duration')
            service_object.cost=request.POST.get('premium_price')
            service_object.advert_rate_card_status='1'
            service_object.advert_rate_card_updated_date = datetime.now()
            service_object.advert_rate_card_updated_by = 'Admin'
            service_object.save()
            update_advert_rate_card(service_object)
            data={
                'success':'true',
                }
    except Exception, e:
            data={
                'success':'false',
                'message':str(e)
            }
    print '========data====================',data 
    return HttpResponse(json.dumps(data),content_type='application/json') 



def update_advert_rate_card(rate_card_obj):
    gmail_user =  "cityhoopla2016"
    gmail_pwd =  "cityhoopla@2016"
    FROM = 'CityHoopla Admin: <cityhoopla2016@gmail.com>'
    TO = ['cityhoopla2016@gmail.com']
    #pdb.set_trace()
    try:
        TEXT = "Hi Admin,\nAdvert Rate Card " + str(rate_card_obj.advert_service_name) + " " +"updated successfully.\nTo view complete details visit portal and follow - Rate Card ->Premium Service\n\nThank You,"+'\n'+"CityHoopla Team"
        SUBJECT = "Premium Service Rate Card Updated Successfully!"
        #server = smtplib.SMTP_SSL()
        server = smtplib.SMTP("smtp.gmail.com", 587) 
        server.ehlo()
        server.starttls()

        server.login(gmail_user, gmail_pwd)
        message = """From: %s\nTo: %s\nSubject: %s\n\n%s """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
        server.sendmail(FROM, TO, message)
        server.quit()
    except SMTPException,e:
        print e
    return 1 