/*
*This watchface is based on the original default one 
*for AsteroidOS by Florent Revest under BSD license terms:
 * Copyright (C) 2016 Florent Revest <revestflo@gmail.com>
 * All rights reserved.
 *
 * You may use this file under the terms of BSD license as follows:
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the author nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.1
import QtGraphicalEffects 1.0

Item {
    id: rootitem
    anchors.fill: parent

    Item {
        id: clock
        anchors.fill: parent
        Text {
            id: timeDisplay
   
            font.pixelSize: 80
            font.family: "Roboto"
            font.weight: Font.Medium
            lineHeight: 0.85
            color: "white"
            horizontalAlignment: Text.AlignHCenter
    
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                right: parent.right
            }
    
            text: Qt.formatDateTime(wallClock.time, "hh:mm")
        }

    Text {
        id: dateDisplay

        font.pixelSize: 20
        color: "white"
        opacity: 0.8
        horizontalAlignment: Text.AlignHCenter

        anchors {
            top: timeDisplay.bottom
            left: parent.left
            right: parent.right
        }

        text: Qt.formatDate(wallClock.time, "<b>ddd</b> d MMM")
    }
    }

/*Image {
    source: "background.jpg"
    width: 320
    height: 320
}*/
    DropShadow {
        anchors.fill: clock
        source: clock
        radius: 7
        samples: 15
    }
}
