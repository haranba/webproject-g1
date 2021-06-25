from flask import Blueprint, render_template, request, url_for, redirect, session

# user blueprint definition
from utilities.db.db_manager import dbManager

logout = Blueprint('logout',
                  __name__,
                  static_folder='static',
                  static_url_path='/logout',
                  template_folder='templates')

# Routes
@logout.route('/logout')
def index():
    session.clear()
    return redirect(url_for('home.index'))

