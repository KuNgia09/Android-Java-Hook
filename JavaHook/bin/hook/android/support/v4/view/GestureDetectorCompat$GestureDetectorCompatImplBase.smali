.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-eqz p3, :cond_1b

    .line 154
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 158
    :goto_c
    iput-object p2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 159
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_17

    .line 160
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 162
    :cond_17
    invoke-direct {p0, p1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    .line 163
    return-void

    .line 156
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_1b
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    goto :goto_c
.end method

.method static synthetic access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 414
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 415
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 416
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 417
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 418
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 419
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_2b

    .line 420
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 422
    :cond_2b
    return-void
.end method

.method private cancelTaps()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 429
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 430
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 431
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 432
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_21

    .line 433
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 435
    :cond_21
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 456
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 457
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    if-nez p1, :cond_a

    .line 167
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Context must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_a
    iget-object v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v3, :cond_16

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_16
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 175
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 176
    .local v2, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 177
    .local v1, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    .line 180
    mul-int v3, v2, v2

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    .line 181
    mul-int v3, v1, v1

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    .line 182
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-boolean v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_6

    .line 449
    :cond_5
    :goto_5
    return v2

    .line 443
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget v3, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 448
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 449
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 44
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 226
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-nez v36, :cond_16

    .line 227
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 229
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 231
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4e

    const/16 v22, 0x1

    .line 233
    .local v22, "pointerUp":Z
    :goto_31
    if-eqz v22, :cond_51

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v25

    .line 236
    .local v25, "skipIndex":I
    :goto_37
    const/16 v26, 0x0

    .local v26, "sumX":F
    const/16 v27, 0x0

    .line 237
    .local v27, "sumY":F
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v7

    .line 238
    .local v7, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_41
    move/from16 v0, v18

    if-ge v0, v7, :cond_69

    .line 239
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_54

    .line 238
    :goto_4b
    add-int/lit8 v18, v18, 0x1

    goto :goto_41

    .line 231
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_4e
    const/16 v22, 0x0

    goto :goto_31

    .line 233
    .restart local v22    # "pointerUp":Z
    :cond_51
    const/16 v25, -0x1

    goto :goto_37

    .line 240
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v25    # "skipIndex":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_54
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v36

    add-float v26, v26, v36

    .line 241
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v36

    add-float v27, v27, v36

    goto :goto_4b

    .line 243
    :cond_69
    if-eqz v22, :cond_81

    add-int/lit8 v12, v7, -0x1

    .line 244
    .local v12, "div":I
    :goto_6d
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v14, v26, v36

    .line 245
    .local v14, "focusX":F
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v15, v27, v36

    .line 247
    .local v15, "focusY":F
    const/16 v17, 0x0

    .line 249
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_4b6

    .line 405
    :cond_80
    :goto_80
    :pswitch_80
    return v17

    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    .end local v17    # "handled":Z
    :cond_81
    move v12, v7

    .line 243
    goto :goto_6d

    .line 251
    .restart local v12    # "div":I
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_83
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 252
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 254
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    goto :goto_80

    .line 258
    :pswitch_97
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 259
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    const/16 v37, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 264
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v28

    .line 265
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v19

    .line 266
    .local v19, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v33

    .line 267
    .local v33, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v35

    .line 268
    .local v35, "y1":F
    const/16 v18, 0x0

    :goto_e7
    move/from16 v0, v18

    if-ge v0, v7, :cond_80

    .line 269
    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_f4

    .line 268
    :cond_f1
    add-int/lit8 v18, v18, 0x1

    goto :goto_e7

    .line 271
    :cond_f4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v20

    .line 272
    .local v20, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v36

    mul-float v32, v33, v36

    .line 273
    .local v32, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v36

    mul-float v34, v35, v36

    .line 275
    .local v34, "y":F
    add-float v13, v32, v34

    .line 276
    .local v13, "dot":F
    const/16 v36, 0x0

    cmpg-float v36, v13, v36

    if-gez v36, :cond_f1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_80

    .line 284
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a6

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    .line 286
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_150

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_263

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_263

    if-eqz v16, :cond_263

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_263

    .line 290
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 301
    .end local v16    # "hadTapMessage":Z
    :cond_1a6
    :goto_1a6
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 302
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1c7

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    :cond_1c7
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 307
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 308
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 309
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 310
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 311
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_233

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    sget v40, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 318
    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 320
    goto/16 :goto_80

    .line 297
    .restart local v16    # "hadTapMessage":Z
    :cond_263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    sget v38, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1a6

    .line 323
    .end local v16    # "hadTapMessage":Z
    :pswitch_277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    move/from16 v36, v0

    if-nez v36, :cond_80

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    move/from16 v36, v0

    sub-float v23, v36, v14

    .line 327
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    move/from16 v36, v0

    sub-float v24, v36, v15

    .line 328
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2a9

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    goto/16 :goto_80

    .line 331
    :cond_2a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_336

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    move/from16 v36, v0

    sub-float v36, v14, v36

    move/from16 v0, v36

    float-to-int v9, v0

    .line 333
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    move/from16 v36, v0

    sub-float v36, v15, v36

    move/from16 v0, v36

    float-to-int v10, v0

    .line 334
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    mul-int v37, v10, v10

    add-int v11, v36, v37

    .line 335
    .local v11, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_322

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 337
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 338
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 339
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    :cond_322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_80

    .line 345
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_80

    .line 347
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    :cond_336
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000

    cmpl-float v36, v36, v37

    if-gez v36, :cond_34a

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_80

    .line 348
    :cond_34a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 349
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 350
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    goto/16 :goto_80

    .line 355
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    :pswitch_36e
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 357
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_3e8

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 383
    :cond_392
    :goto_392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3a3

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 387
    :cond_3a3
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3c0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 392
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 394
    :cond_3c0
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 395
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_80

    .line 360
    :cond_3e8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_404

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    goto :goto_392

    .line 363
    :cond_404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_439

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    move/from16 v36, v0

    if-eqz v36, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_392

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto/16 :goto_392

    .line 370
    :cond_439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 371
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 372
    .local v21, "pointerId":I
    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 373
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v31

    .line 375
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v30

    .line 378
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-gtz v36, :cond_495

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_392

    .line 380
    :cond_495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    goto/16 :goto_392

    .line 401
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    :pswitch_4b1
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    goto/16 :goto_80

    .line 249
    :pswitch_data_4b6
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_36e
        :pswitch_277
        :pswitch_4b1
        :pswitch_80
        :pswitch_83
        :pswitch_97
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .param p1, "isLongpressEnabled"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 206
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 192
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 193
    return-void
.end method
