"""
Created on Thu May 11 16:04:57 2017
@author: xiaoanh
    self.setWidget(wid)
AttributeError: 'Window' object has no attribute 'setWidget'

"""
import sys
from PyQt4 import QtGui
from PyQt4 import QtCore
from matplotlib.backends.backend_qt4agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt4agg import NavigationToolbar2QT as NavigationToolbar
import matplotlib.pyplot as plt
import numpy as np

###############################################################################
###############################################################################
## class Window
title_font = {'fontname': 'Arial', 'size': '16', 'color': 'black', 'weight': 'bold',
              'verticalalignment': 'bottom'}

class Window(QtGui.QDialog):
# class Window(QtGui.QMainWindow):
    def __init__(self, parent=None):
        super(Window, self).__init__(parent)

        self.valueCapacity = 0
        # self.valueLED = 0
        self.valueLED = [0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,    0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0]

        ##### timer
        self.timer = QtCore.QTimer(self)
        self.timer.setInterval(200)
        self.timer.timeout.connect(self.update_figure)
        # valueLED = self.valueLED

        self.figure = plt.figure()

        self.canvas = FigureCanvas(self.figure)

        self.toolbar = NavigationToolbar(self.canvas, self)

        font = QtGui.QFont()
        font.setFamily('Lucida')
        font.setFixedPitch(True)
        font.setPixelSize(28)
        font.setBold(True)

        lbl_txt = QtGui.QLabel("High Density 10X Mobile-Fronthaul")
        lbl_txt.setFont(font)

        lbl_img = QtGui.QLabel(self)
        png = QtGui.QPixmap('D:/figure1411/demo_mfh.png')
        lbl_img.setPixmap(png)

        ICON_RED_LED = QtGui.QPixmap('D:/figure1411/led-red-on.png')
        ICON_GREEN_LED = QtGui.QPixmap('D:/figure1411/led-green-on.png')

        ###############################################################################
        ## layout

        wid = QtGui.QWidget()
        # self.setWidget(wid)

        # layout = QtGui.QVBoxLayout()
        layout = QtGui.QVBoxLayout(wid)
        layout.addWidget(self.toolbar)
        layout.addWidget(lbl_txt, 0, QtCore.Qt.AlignHCenter)
        layout.addWidget(lbl_img, 0, QtCore.Qt.AlignHCenter)

        ##### hbox1 button
        hbox1 = QtGui.QHBoxLayout()
        self.start_button = QtGui.QPushButton("start", self)
        self.stop_button = QtGui.QPushButton("stop", self)
        self.exit_button = QtGui.QPushButton("exit", self)

        self.start_button.clicked.connect(self.on_start)
        self.stop_button.clicked.connect(self.on_stop)
        self.exit_button.clicked.connect(self.on_exit)

        hbox1.addWidget(self.start_button)
        hbox1.addWidget(self.stop_button)
        hbox1.addWidget(self.exit_button)

        ###### hbox, led
        # hbox = QtGui.QHBoxLayout()

        # self.hbox = QtGui.QHBoxLayout()

        size = self.size()
        w = size.width()
        h = size.height()

        ## vbox, lcd and dial
        # vbox = QtGui.QVBoxLayout()

        self.paint = MyPaintSpace(self)
        # vbox.addWidget(self.paint, 0, QtCore.Qt.AlignHCenter)
        # vbox.addWidget(self.paint)
        # self.plot_led = PlotLED(self)

        # global plot_led
        
        # self.wid = QtGui.QWidget(wid)
        self.wid = QtGui.QWidget()
        # global plot_led
        # plot_led = PlotLED(self)
        self.plot_led = PlotLED(self)
        # plot_led = PlotLED(self)

        ## vbox, lcd and dial
        # vbox = QtGui.QVBoxLayout(self.wid)

        # mainSplitter = QtGui.QSplitter(QtCore.Qt.Vertical)
        vSplitter = QtGui.QSplitter(QtCore.Qt.Vertical)
        vframe = QtGui.QFrame(vSplitter)
        vframebox = QtGui.QVBoxLayout(vframe)
        # vbox = QtGui.QVBoxLayout()

        # vbox1 = QtGui.QVBoxLayout(self)
        # vbox2 = QtGui.QVBoxLayout()
        # vbox = QtGui.QGridLayout()
        # hbox = QtGui.QHBoxLayout(wid)
        hbox = QtGui.QHBoxLayout()
        # hbox = QtGui.QHBoxLayout(self.wid)
###############################################################################
## set layout plot_led

        hbox.addSpacing(100)

        # hbox.addWidget(self.wid)
        # hbox.addWidget(self.plot_led) ## class PlotLED, d201706_01
        # vbox.addWidget(self.plot_led, 0.3, QtCore.Qt.AlignLeft) ## class PlotLED, d201706_01
        # vbox.addWidget(self.plot_led, 0, 0) ## vbox = QtGui.QGridLayout(), ## class PlotLED, d201706_01
        # vbox1.addWidget(self.plot_led) ## vbox = QtGui.QGridLayout(), ## class PlotLED, d201706_01

## set layout speedometer
        # vbox.addWidget(self.paint, 0, QtCore.Qt.AlignRight)
        # vbox.addWidget(self.paint, 0, 1)
        # vbox2.addWidget(self.paint)
        # vbox.addLayout(vbox1)
        # vbox.addLayout(vbox2)
        vframebox.addWidget(self.plot_led)
        # vbox.addWidget(self.paint)
        # vbox1 = QtGui.QVBoxLayout()
        # vbox1.addWidget(vSplitter)
        # vbox1.addWidget(self.paint)
        vbox1 = QtGui.QGridLayout()
        vbox1.addWidget(vSplitter,0,0)
        # vbox1.addWidget(self.plot_led,0,0) ## @err: no show of speedometer
        vbox1.addWidget(self.paint,0,1)
        # vbox.addLayout(vbox1)
        # hbox.addLayout(vbox)
        # hbox.addLayout(vbox1)
        # hbox.addStretch()
        hbox.stretch(1)
        # self.hbox.stretch(1)

        hbox1.setAlignment(QtCore.Qt.AlignHCenter)
        layout.addLayout(hbox1)
        # hbox.setAlignment(QtCore.Qt.AlignVCenter)
        # layout.addLayout(hbox)
        # layout.addLayout(vbox)
        layout.addLayout(vbox1)
        # layout.addWidget(mainSplitter)
        # hbox.setGeometry(QtCore.QRect(150, 70, 151, 31))

        self.setLayout(layout)

        # wid.setLayout(layout)


        self.setWindowTitle('NOKIA')
        screen = QtGui.QDesktopWidget().screenGeometry()
        # self.setGeometry(0, 0, screen.width(), screen.height())
    #        self.setWindowIcon(QtGui.QIcon('D:/figure1411/NOKIAs.png'))
        self.led_idx = 0

    def reload_info (self):
        # self.valueLED = [0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0,
        #                  0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0]
        # led_idx = 0
        # led_idx = self.led_idx
        # self.led_idx+=8
        if self.led_idx == 48:
            self.led_idx = 0
            self.valueLED = np.zeros(48)
        # self.led_idx = self.led_idx + 8
        # led_idx_range = led_idx:1:led_idx_end
        # for i in xrange(led_idx:(led_idx+7)):
        # for i in led_idx_range:
        for i in range(self.led_idx, self.led_idx+8):
            self.valueLED[i] = 1
        self.led_idx+=8

        # self.valueCapacity+=2
        self.valueCapacity+=5
        # self.valueLED = 1
        if self.valueCapacity == 80:
            self.valueCapacity = 0

    def update_figure(self):

        self.reload_info()

        # print(self.valueLED)
        # self.plot_led(valueLED)
        # self.plot_led(self.valueLED) ## func plot_led
        # self.plot_led = PlotLED(self)
        # self.plot_led()
        # TypeError: 'PlotLED'object is not callable
        self.plot_led.plot_led()
        # plot_led.plot_led()
        # plot_led()
        # self.plot_led.show()
        self.update()


    ###############################################################################
    ###### timer
    def on_start(self):
        self.timer.start(30)
        self.valueLED = np.zeros(48)

    def on_stop(self):
        self.timer.stop()  # close timer
        self.valueLED =  [0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,    0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0]

    def on_exit(self):
        self.close()  # close window

    ###############################################################################
    ## def plot
    def plot(self):

        data_re = [-3, -3, -1, -1, 1, 1, 3, 3]
        data_im = [-3, 3, -1, 1, -1, 1, -3, 3]
        ax1 = self.figure.add_subplot(121)
        ax1.hold(False)
        plt.title('Before Equalization', **title_font)

        ax2 = self.figure.add_subplot(122)
        ax2.hold(False)
        plt.scatter(data_re, data_im, s=20)
        plt.title('After Equalization', **title_font)

        self.canvas.draw()

###############################################################################
###############################################################################
class PlotLED(QtGui.QMainWindow):
# class PlotLED(QtGui.QWidget):
    def __init__(self, parent):
#     def __init__(self, parent=None):
        super(PlotLED, self).__init__(parent)
        self.parent = parent
        # self.plot_led()
        self.show()
        # self.valueLED = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    # def plot_led(self, valueLED):
    def plot_led(self):
        # wid = self.parent.wid
		# QWidget::setLayout: Attempting to set QLayout "" on QWidget "", which already has a layout
        valueLED = self.parent.valueLED
        ## test for class PlotLED
        # valueLED = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        # wid = QtGui.QWidget()
        # print(valueLED)
        grid_inner = QtGui.QGridLayout()
        # grid_inner = QtGui.QGridLayout(wid)
        wid = QtGui.QWidget(self)

        self.setCentralWidget(wid)
        wid.setLayout(grid_inner)
        # self.wid.setLayout(grid_inner)

        pos = [(x,y) for x in range(6) for y in range(8)]
        print('valueLED inside class: ', valueLED)

        j = 0

        for i in range(48):
            lbl_led = QtGui.QLabel()
            lbl_led.setText(str(i+1))
            lbl_led.setAlignment(QtCore.Qt.AlignCenter)
            if valueLED[i]:
                lbl_led.setStyleSheet("QLabel {background-image: url('D:/figure1411/led-green-on.png')} ")
            else:
                lbl_led.setStyleSheet("QLabel {background-image: url('D:/figure1411/led-red-on.png')} ")
            lbl_led.setFixedSize(30, 30)
            grid_inner.addWidget(lbl_led, pos[j][0], pos[j][1])
            # grid.re
            j = j + 1
        # self.repaint()
        self.update()

		###############################################################################
###############################################################################
## class painter
class MyPaintSpace(QtGui.QWidget):
    def __init__(self, parent):
        super(MyPaintSpace, self).__init__(parent)
        self.parent = parent
        valueLoc = 80
        self.handShape = QtGui.QPolygon([QtCore.QPoint(0,7), QtCore.QPoint(0,-7), QtCore.QPoint(-56,0)])  ## horizontal, 180deg
        # self.handColor = QtGui.QColor(0, 127, 0)
        # self.orange = QtGui.QColor(255,165,0)
        self.orange = QtGui.QColor(0xFFA500)
        self.bronze = QtGui.QColor(0xD98719)
        self.gold = QtGui.QColor(0xD9D919)
        self.handColor = QtCore.Qt.blue
        # self.num = [0, 10, 20, 30, 40, 50, 60, 70]
        self.num = [0, 10, 20, 30, 40, 50, 60, 70, 80 ]  ## d201705_26
        self.show()
        # self.paintEvents()

    def paintEvent(self, event):
        size = self.size()
        self.update()
        w = size.width()
        h = size.height()
        valueCapacity = self.parent.valueCapacity
        painter = QtGui.QPainter()
        painter.begin(self)
        CircleRadius = 160
        # CircleAngle = 180
        CircleAngle = 360

        painter.translate(w/2,h/2)

        pen = QtGui.QPen(QtCore.Qt.black, 6, QtCore.Qt.SolidLine)
        # pen = QtGui.QPen(self.gold, 6, QtCore.Qt.SolidLine)
        painter.setPen(pen)
        # painter.setFont(QtGui.QFont('Decorative', 12))
        painter.save()
        painter.drawArc(-CircleRadius/2, -CircleRadius/2, CircleRadius, CircleRadius, 0, 16*CircleAngle)
        painter.restore()
        # painter.restore()

        j = 0
        painter.rotate(-45)  

        ###### paint gauge

        # pen = QtGui.QPen(QtCore.Qt.black, 2, QtCore.Qt.SolidLine)
        pen = QtGui.QPen(self.orange, 2, QtCore.Qt.SolidLine)
        painter.setPen(pen)
        painter.save()


        for i in range(0, 81):
            painter.drawLine(-73, 0, -77, 0) ## horizontal, 180deg
            if (i%10 == 0):
                painter.drawLine(-68, 0, -77, 0)  ## horizontal, 180deg
                metrics = painter.fontMetrics()
                font = QtGui.QFont()
                font.setPixelSize(12)
                font.setBold(True)
                painter.setFont(font)

                # fw = metrics.width(str(self.num[j]))
                fw = 4  ## horizontal, d201705_26
                painter.drawText(-68+fw,0+1.8*fw/2, str(self.num[j])+'G') ## horizontal, 180deg
                j = j+1
            painter.rotate(3.375) 
        painter.restore()

###### painter connect
        painter.setPen(QtCore.Qt.NoPen)
        painter.setBrush(QtGui.QBrush(self.handColor))
        # painter.save()
        painter.rotate(valueCapacity/10*33.75) 
        painter.save()

        painter.drawConvexPolygon(self.handShape)
        painter.restore()

        painter.end()


###############################################################################
###############################################################################
## main
if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)

    win = Window()
    # win = PlotLED()
    win.show()

    sys.exit(app.exec_())
