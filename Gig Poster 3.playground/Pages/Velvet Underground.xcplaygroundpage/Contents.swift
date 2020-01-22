//: # Gig Poster 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![velvet-underground-no-grid](VelvetUnderground.png "Velvet Underground")
 ![velvet-underground-with-grid](VelvetUnderground-with-grid.png "Velvet Underground")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let purple = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
let offWhite = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)

// Begin your solution here...
// make background
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 4000, height: 5000)
//make all the text
canvas.textColor = offWhite
canvas.drawText(message: "the velvet underground", at: Point(x: 10, y: 425), size: 30, kerning: 0.0)
canvas.drawText(message: "first appearance in london", at: Point(x: 10, y: 550), size: 7, kerning: 0.0)
canvas.drawText(message: "the london college of printing", at: Point(x: 10, y: 540), size: 7, kerning: 0.0)
canvas.drawText(message: "with spring and pollyfloskin", at: Point(x: 145, y: 550), size: 7, kerning: 0.0)
canvas.drawText(message: "plus the great western lights show", at: Point(x: 145, y: 540), size: 7, kerning: 0.0)
canvas.drawText(message: "thursday", at: Point(x: 295, y: 550), size: 7, kerning: 0.0)
canvas.drawText(message: "october 14 1971 /8pm", at: Point(x: 295, y: 540), size: 7, kerning: 0.0)
//time to do the lines
canvas.lineColor = offWhite
canvas.drawLine(from: Point(x: 0, y: 470), to: Point(x: 400, y: 470))
canvas.drawLine(from: Point(x: 0, y: 570), to: Point(x: 400, y: 570))
// ok time to do some rectangles
canvas.fillColor = purple
canvas.lineColor = purple
for y in stride(from: 0, through: 380, by: 80) {
    for x in stride(from: 0, through: 400, by: 80) {
canvas.drawRectangle(at: Point(x: x, y: y), width: 60, height: 20)
        canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: x, y: y ), width: 20, height: 60)
        
canvas.defaultLineWidth = 20
        canvas.drawLine(from: Point(x: x + 20, y: y + 20), to: Point(x: x + 60, y: y + 60))
        
        
        // White Arrow
       
    }
}
canvas.fillColor = offWhite
canvas.defaultLineWidth = 20
canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 60, y: 60))
canvas.drawRectangle(at: Point(x: 320, y: 320 ), width: 20, height: 60)
canvas.drawRectangle(at: Point(x: 320, y: 320 ), width: 60, height: 20)


/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 22, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


