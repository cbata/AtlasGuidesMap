# AtlasGuidesMap

Create a project (preferably in Swift, although Objective-C will do, too) consisting of a MapView with the following:

1 - Long-press on the map to create an annotation at the touch point.
2 - The annotation should be a simple red circle, and in its selected state change color to blue.
3 - Annotations can be dragged and moved around the map. Beginning and ending dragging states should animate lifting and dropping of the annotation, similar to the standard MKPinAnnotationView animations.
4 - Long-pressing on an annotation that is not selected should select it and begin dragging with the same gesture (standard behavior is to tap the annotation once to select it, then long-press to begin dragging).
