import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtUiTools import QUiLoader
from PySide6.QtCore import QFile
import os
# Create the application
app = QApplication(sys.argv)

# Load your design file
loader = QUiLoader()
ui_file = QFile("student_form.ui")
print(os.path.join(os.path.dirname(__file__),"student_form.ui"))  # Check if the file exists
ui_file.open(QFile.ReadOnly)
window = loader.load(ui_file)
ui_file.close()

# Show the window
window.show()

# Run the application
sys.exit(app.exec())
