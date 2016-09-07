.class Landroid/support/v4/view/ViewGroupCompatHC;
.super Ljava/lang/Object;
.source "ViewGroupCompatHC.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 28
    return-void
.end method
