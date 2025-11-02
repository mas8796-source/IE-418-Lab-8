// contact_form.qml
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5

ApplicationWindow {
    id: root
    visible: true
    width: 520
    height: 560
    title: "task4 (QML)"

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 12
        width: 460

        Label {
            id: task4_Title
            objectName: "task4_Title"
            text: "Contact Us"
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        // Name
        TextField {
            id: task4_Name
            objectName: "task4_Name"
            placeholderText: "Name"
            Layout.fillWidth: true
            Layout.preferredWidth: 400
        }

        // Email + ✓ / ✗
        RowLayout {
            spacing: 8
            Layout.fillWidth: true
            Layout.preferredWidth: 400

            TextField {
                id: task4_Email
                objectName: "task4_Email"
                placeholderText: "Email"
                Layout.fillWidth: true
            }
            Label {
                id: task4_EmailStatus
                objectName: "task4_EmailStatus"
                text: ""
                color: "green"
                Layout.preferredWidth: 24
                horizontalAlignment: Text.AlignHCenter
            }
        }

        // Phone
        TextField {
            id: task4_Phone
            objectName: "task4_Phone"
            placeholderText: "Phone"
            Layout.fillWidth: true
            Layout.preferredWidth: 400
        }

        // Message (taller)
        TextArea {
            id: task4_Message
            objectName: "task4_Message"
            placeholderText: "Message"
            Layout.fillWidth: true
            Layout.preferredWidth: 400
            Layout.preferredHeight: 100
            wrapMode: TextEdit.Wrap
        }

        // Buttons
        RowLayout {
            spacing: 16
            Layout.alignment: Qt.AlignHCenter

            Button {
                id: task4_Submit
                objectName: "task4_Submit"
                text: "Submit"
                enabled: false
            }
            Button {
                id: task4_Cancel
                objectName: "task4_Cancel"
                text: "Cancel"
            }
        }

        // Feedback label
        Label {
            id: task4_Success
            objectName: "task4_Success"
            text: ""
            color: "green"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
