/* Copyright (c) 2012 Research In Motion Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    titleBar: TitleBar {
        title: qsTr("Persistent Objects Sample")
    }

    Container {
        layout: DockLayout {
        }
        //! [0]
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            leftPadding: 30
            rightPadding: 30

            TextField {
                id: idField
                horizontalAlignment: HorizontalAlignment.Center

                hintText: qsTr("ID")
            }

            Button {
                horizontalAlignment: HorizontalAlignment.Center

                text: qsTr("Delete")

                onClicked: {
                    _app.deleteObject(idField.text);
                }
            }

            Button {
                horizontalAlignment: HorizontalAlignment.Center

                text: qsTr("Delete All")

                onClicked: {
                    _app.clearObjects();
                }
            }
        }
        //! [0]
    }
}
