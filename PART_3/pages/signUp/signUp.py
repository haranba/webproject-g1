from flask import Blueprint, render_template, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

signUp = Blueprint('signUp',
                   __name__,
                   static_folder='static',
                   static_url_path='/signUp',
                   template_folder='templates')


# # Routes
# @signUp.route('/signUp')
# def index():
#     return render_template('signup.html')

#Routes
@signUp.route('/signUp', methods=['GET', 'POST'])
def index():
   if request.method == 'POST':
       customer_num = dbManager.fetch('''SELECT * FROM customer''')
       id = len(customer_num)+1
       email = request.values.get('email')
       phone = request.values.get('phone')
       password = request.values.get('psw')
       customer_name = request.values.get('name')
       address = request.values.get('address')
       email_exists = dbManager.fetch('SELECT * FROM customer WHERE email=%s ', (email,))
       if email_exists:
           return render_template('signin.html')
       else:
           new_customer = dbManager.commit('INSERT INTO customer VALUES(%s,%s,%s,%s,%s,%s)',
                        (id, email, phone, customer_name, password, address))
           if new_customer:
               return render_template('signin.html')

   return render_template('signup.html')