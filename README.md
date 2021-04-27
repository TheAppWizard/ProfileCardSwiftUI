# ProfileCardSwiftUI
Profile Card made with SwiftUI


![Image of Profile Card](https://github.com/TheAppWizard/ProfileCardSwiftUI/blob/main/opprofile.png)



## Custom Rounded Corners in SwiftUI by [raghava.codes](https://www.instagram.com/p/CJyO77pgex4/?igshid=198hw5s9w6y3e)

```
import SwiftUI

struct CustomShape: Shape {
    var corner : UIRectCorner
    var radii : CGFloat

    func path(in rect : CGRect) -> Path{
        let path = UIBezierPath(
            roundedRect : rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(
            width: radii, height: radii))

        return Path(path.cgPath)
    }
}
```
