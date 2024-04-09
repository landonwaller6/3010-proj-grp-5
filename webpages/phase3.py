import psycopg2  

conn = psycopg2.connect(host="192.168.56.20", port="5432", database="phase2", user="postgres", password="student")

cur = conn.cursor()

cur.execute("SELECT * FROM fte")

records = cur.fetchall()

cur.close()
conn.close()

html_table = "<table><tr><th>Faculty</th><th>Year</th><th>Semester</th><th>FTE</th></tr>"

for row in records:
    html_table += "<tr>"
    html_table += "<td>{}</td>".format(row[0])
    html_table += "<td>{}</td>".format(row[1])
    html_table += "<td>{}</td>".format(row[2])
    html_table += "<td>{}</td>".format(row[3])
    html_table += "</tr>"

html_table += "</table>"

file_name = "fte.html"
with open(file_name, "w") as file:
    file.write(html_table)

print("HTML table saved as ", file_name)