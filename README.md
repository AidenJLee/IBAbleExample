# IBAbleExample
IB extension sample

# AutoLayout

### Constraint Fomular

targetView.attribute = multiplier * referenceView.attribute + constant

attribute : top, left, bottom, right, width, height / leading, trailing, centerX, centerY, baseline


### Priority 

typedef float UILayoutPriority;
// A required constraint.  Do not exceed this.
static const UILayoutPriority UILayoutPriorityRequired NS_AVAILABLE_IOS(6_0) = 1000;

// This is the priority level with which a button resists compressing its content.
static const UILayoutPriority UILayoutPriorityDefaultHigh NS_AVAILABLE_IOS(6_0) = 750;

// This is the priority level at which a button hugs its contents horizontally.
static const UILayoutPriority UILayoutPriorityDefaultLow NS_AVAILABLE_IOS(6_0) = 250; 

// When you send -[UIView systemLayoutSizeFittingSize:], the size fitting most closely to the target size (the argument) is computed.  UILayoutPriorityFittingSizeLevel is the priority level with which the view wants to conform to the target size in that computation.  It's quite low.  It is generally not appropriate to make a constraint at exactly this priority.  You want to be higher or lower.
static const UILayoutPriority UILayoutPriorityFittingSizeLevel NS_AVAILABLE_IOS(6_0) = 50; 


### Intrinsic Size


### Compression Resistance & Content Hugging



