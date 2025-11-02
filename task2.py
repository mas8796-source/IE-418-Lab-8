import sys
import pandas as pd
from PySide6.QtWidgets import QApplication
from PySide6.QtUiTools import QUiLoader
from PySide6.QtCore import QFile

CSV_PATH = "submissions.csv"
_session_rows = []  # stores submissions in memory during the run


def submit_form():
    """Validate inputs, print info, update label, and save to CSV."""
    name = window.lineEdit.text().strip()
    age = window.spinBox.value()

    # ---- Validation ----
    if not name:
        print("Please enter a name")
        window.label.setText("Please enter a name")
        return
    if age == 0:
        print("Please enter an age")
        window.label.setText("Please enter an age")
        return

    # ---- Output to console ----
    print(f"Name: {name}")
    print(f"Age: {age}")

    # ---- Update label feedback ----
    window.label.setText("Form submitted!")

    # ---- Save to DataFrame / CSV ----
    _session_rows.append({"name": name, "age": age})
    df = pd.DataFrame(_session_rows)

    # Append if CSV exists, otherwise create a new one
    try:
        existing = pd.read_csv(CSV_PATH)
        df = pd.concat([existing, df], ignore_index=True)
    except Exception:
        pass

    df.to_csv(CSV_PATH, index=False)


def clear_form():
    """Clear inputs and give feedback."""
    window.lineEdit.clear()
    window.spinBox.setValue(0)
    window.label.setText("Form cleared!")
    print("Form was cleared")


# ---- App setup ----
app = QApplication(sys.argv)

# Load your UI file
loader = QUiLoader()
ui_file = QFile("student_form.ui")
if not ui_file.exists():
    raise FileNotFoundError("Could not find 'student_form.ui' in the folder.")
ui_file.open(QFile.ReadOnly)
window = loader.load(ui_file)
ui_file.close()

if window is None:
    raise RuntimeError("Failed to load UI. Check your file for errors.")

# ---- Connect buttons to functions ----
window.pushButton.clicked.connect(submit_form)      # Submit
window.pushButton_2.clicked.connect(clear_form)     # Clear

# ---- Show window ----
window.show()
sys.exit(app.exec())

window.show()
sys.exit(app.exec())


