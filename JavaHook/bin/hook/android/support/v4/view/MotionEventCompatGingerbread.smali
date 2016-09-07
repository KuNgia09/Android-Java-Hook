.class Landroid/support/v4/view/MotionEventCompatGingerbread;
.super Ljava/lang/Object;
.source "MotionEventCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    return v0
.end method
