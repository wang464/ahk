import pyautogui
size = pyautogui.size()
# 把鼠标移动到(10, 10)的位置，周期1秒
# pyautogui.moveTo(10, 10, duration=1)
# 把鼠标一到屏幕中央，周期0.5秒
pyautogui.moveTo(size.width/2, size.height/2, duration=0.5)
# 鼠标相对移动，周期1秒
# pyautogui.moveRel(100, 0, duration=1)