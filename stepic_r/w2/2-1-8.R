# Друзья, 90 % ошибок из-за того, что вы забываете сделать subset исходных данных, отобрав наблюдения только для женщин! Пожалуйста внимательно читайте условие!


# Постройте столбчатую диаграмму распределения цвета глаз по цвету волос только у женщин из
# таблицы HairEyeColor. По оси X должен идти цвет волос, цвет столбиков должен отражать цвет глаз. По оси Y - количество наблюдений.

# Чтобы построить столбчатую диаграмму в ggplot, вам нужно подключить нужный пакет, затем преобразовать таблицу HairEyeColor в data frame:

# mydata <- as.data.frame(HairEyeColor)

# Постройте график на основе предложенного кода, сохранив его в переменную obj.
# Укажите, чему равен аргумент data, что должно находиться в aes(). Изучите справку по geom_bar(), чтобы узнать, чему должен равняться аргумент position для отображения цвета глаз в виде соседних столбиков. Там же вы найдёте ответ на вопрос, за что отвечает аргумент stat. С помощью scale_fill_manual мы говорим графику, что мы хотим, чтобы он использовал указанные нами цвета.
# Дополните предложенный код:

# library("ggplot2")
# mydata <- as.data.frame(HairEyeColor)
# obj <- ggplot(data = , aes(x = , y = Freq)) +
# geom_bar(stat="identity", position = ) +
# scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))

#  У себя на компьютере вы можете визуализировать полученный график, исполнив 'obj'. В случае, если все сделано правильно, он будет выглядеть так (обратите внимание на название осей и легенды):

# Прежде чем отправить код на проверку, выполните его на своем компьютере, чтобы избежать лишних ошибок.
# При ошибке, обратите внимание на содержание feedback.

library("ggplot2")
mydata <- as.data.frame(HairEyeColor)
mydata_s <- mydata[mydata$Sex == 'Female',1:4]

tb <- subset(mydata, Sex == 'Female')

obj <- ggplot(data = mydata_s , aes(x =  Hair, y = Freq)) + geom_bar(stat="identity", position = "dodge", aes(fill = Eye)) + scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
