from flask import Blueprint, render_template, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

# products blueprint definition
signIn = Blueprint('signIn',
                   __name__,
                   static_folder='static',
                   static_url_path='/signIn',
                   template_folder='templates')


# Routes
# @signIn.route('/signIn')
# def index():
#     return render_template('signin.html')


# Routes
@signIn.route('/signIn', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        email = request.values.get('email')
        password = request.values.get('psw')
        user = dbManager.fetch('SELECT * FROM customer WHERE email=%s AND password=%s', (email, password))
        if user and len(user):
            session['logged_in'] = True
            session['user'] = {
                'name': user[0].customer_name,
                'password': user[0].password
            }
            session['id'] = user[0].customer_ID

            return redirect(url_for('home.index'))
        else:
            return render_template('signin.html', message="האימייל או הסיסמא שהזנת שגויים ! נסה שוב")
    return render_template('signin.html')