from flask import Flask, render_template, request, redirect, session

app = Flask(__name__)
app.secret_key = "restaurant_secret_key"

@app.route("/")
def home():
    return render_template("menu.html")

@app.route("/login")
def login():
    return render_template("login.html")

@app.route("/register")
def register():
    return render_template("register.html")

@app.route("/cart")
def cart():
    return render_template("cart.html")

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")

@app.route("/confirmation")
def confirmation():
    return render_template("confirmation.html")

if __name__ == "__main__":
    app.run(debug=True)