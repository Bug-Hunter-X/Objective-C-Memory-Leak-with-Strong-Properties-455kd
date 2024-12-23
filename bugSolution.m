To fix this, ensure proper memory management.  If you don't need the string after use, set the property to nil.  This breaks the strong reference, allowing the object to be deallocated when its reference count drops to zero.

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
    self.myString = nil; // Release the string
}
@end
```

Alternatively, using `weak` properties can prevent the issue in scenarios where you only need a non-owning reference to the object.   The choice between `strong` and `weak` depends on the specific use case and ownership semantics.