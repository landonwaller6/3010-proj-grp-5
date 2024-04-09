import psycopg2


conn = psycopg2.connect(host="localhost", port="5432", database="phase2", user="postgres", password="student")

cur = conn.cursor()

cur.execute("SELECT * FROM csfaculty ORDER by First")

records = cur.fetchall()


cur.close()
conn.close()

html_table = "<table><tr><th>ID</th><th>Honorific</th><th>First</th><th>MI</th><th>Last</th><th>Email</th><th>Phone</th><th>Office</th><th>Research Interest</th><th>Rank</th><th>Remarks</th><th>Currently Employed</th></tr>"


for row in records:
    html_table += "<tr>"
    html_table += "<td>{}</td>".format(row[0])
    html_table += "<td>{}</td>".format(row[1])
    html_table += "<td>{}</td>".format(row[2])
    html_table += "<td>{}</td>".format(row[3])
    html_table += "<td>{}</td>".format(row[4])
    html_table += "<td>{}</td>".format(row[5])
    html_table += "<td>{}</td>".format(row[6])
    html_table += "<td>{}</td>".format(row[7])
    html_table += "<td>{}</td>".format(row[8])
    html_table += "<td>{}</td>".format(row[9])
    html_table += "<td>{}</td>".format(row[10])
    html_table += "<td>{}</td>".format(row[11])
    html_table += "</tr>"
    
html_table += "</table>"

file_name = "test9" + ".html"

with open(file_name, "w") as file:
    file.write(html_table)

print("HTML table saved to: ", file_name)

