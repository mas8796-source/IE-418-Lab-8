import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15

Rectangle {
    id: task4_window
    width: 1440
    height: 1024
    color: "#ffffff"
    property alias contact_usText: task4_contact.text
    property alias submitText: task4_slabel.text
    property alias cancelText: task4_clabel.text
    property alias message_Text: task4_mlabel.text

    Shape {
        id: task4_portal
        width: 500
        height: 600
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 448
        anchors.topMargin: 212
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: rectangle_1_ShapePath_0
            strokeWidth: 1
            strokeStyle: ShapePath.SolidLine
            strokeColor: "#000000"
            PathSvg {
                id: rectangle_1_PathSvg_0
                path: "M 0 0 L 500 0 L 500 600 L 0 600 L 0 0 Z"
            }
            joinStyle: ShapePath.MiterJoin
            fillRule: ShapePath.WindingFill
            fillColor: "#d9d9d9"
        }
        antialiasing: true
    }

    Text {
        id: task4_contact
        width: 130
        height: 29
        color: "#333333"
        text: qsTr("Contact us")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 634
        anchors.topMargin: 230
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        styleColor: "#000000"
        style: Text.Outline
        font.weight: Font.Bold
        font.family: "Inter"
    }

    Image {
        id: task4_nlabel
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 454
        anchors.topMargin: 338
        source: "assets/name_.png"
    }

    Image {
        id: task4_elabel
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 454
        anchors.topMargin: 399
        source: "assets/email_.png"
    }

    Image {
        id: task4_plabel
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 454
        anchors.topMargin: 460
        source: "assets/phone_.png"
    }

    Text {
        id: task4_mlabel
        width: 100
        height: 18
        color: "#000000"
        text: qsTr("Message:")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 448
        anchors.topMargin: 491
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Inter"
    }

    Image {
        id: text_on_a_path
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 514
        anchors.topMargin: 601
        source: "assets/text_on_a_path.png"
    }

    Rectangle {
        id: task4_submit
        width: 190
        height: 40
        color: "#007bff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 508
        anchors.topMargin: 651
    }

    Rectangle {
        id: task4_cancel
        width: 190
        height: 40
        color: "#333333"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 714
        anchors.topMargin: 651
    }

    Text {
        id: task4_slabel
        width: 54
        height: 18
        color: "#000000"
        text: qsTr("Submit")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 575
        anchors.topMargin: 662
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Inter"
    }

    Text {
        id: task4_clabel
        width: 54
        height: 19
        color: "#000000"
        text: qsTr("Cancel")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 789
        anchors.topMargin: 662
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Inter"
    }

    Rectangle {
        id: task4_name
        width: 400
        height: 30
        color: "#f5f5f5"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 537
        anchors.topMargin: 330
    }

    Rectangle {
        id: task4_email
        width: 400
        height: 30
        color: "#f5f5f5"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 537
        anchors.topMargin: 392
    }

    Rectangle {
        id: task4_phone
        width: 400
        height: 30
        color: "#f5f5f5"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 537
        anchors.topMargin: 453
    }

    Rectangle {
        id: task4_message
        width: 400
        height: 100
        color: "#f5f5f5"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 537
        anchors.topMargin: 500
    }
}

/*##^##
Designer {
    D{i:0;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d"}D{i:1;uuid:"a164412a-ffef-5b3a-a1b4-0f4e53046362"}
D{i:2;uuid:"a164412a-ffef-5b3a-a1b4-0f4e53046362_ShapePath_0"}D{i:3;uuid:"a164412a-ffef-5b3a-a1b4-0f4e53046362-PathSvg_0"}
D{i:4;uuid:"ed0bfe73-4154-51de-a4ba-df60bcf60b59"}D{i:5;uuid:"069b976e-953a-5bd8-94f0-c8457df85573"}
D{i:6;uuid:"825b705d-1b58-5dc3-98cd-3de82543c145"}D{i:7;uuid:"39024620-9422-5e6d-80bf-13862fb73662"}
D{i:8;uuid:"11d207b4-a5b8-5ef4-a682-8800f4cb8d0c"}D{i:9;uuid:"385365a7-e7ad-5ece-83ea-e824c15b340e"}
D{i:10;uuid:"e9805de8-4850-5579-b4d0-242b4272506e"}D{i:11;uuid:"dff7b95d-c6e8-5327-98d1-632a98c00ac0"}
D{i:12;uuid:"14205b99-b5a3-546a-bbf3-649c63490ac6"}D{i:13;uuid:"ae348b70-da2a-5f04-bbca-e370e3731a24"}
D{i:14;uuid:"261c2027-1b56-5335-bf90-d6fc3885a412"}D{i:15;uuid:"37809dda-b6e1-5321-9f63-b07991699a6e"}
D{i:16;uuid:"e5ba9eb8-df44-5eea-8e39-a45cb5424e7e"}D{i:17;uuid:"9919822e-6910-5cf1-9333-5c849d58d497"}
}
##^##*/

