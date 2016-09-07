.class public abstract Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field static IMPL:Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_e

    .line 28
    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    .line 32
    :goto_d
    return-void

    .line 30
    :cond_e
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    goto :goto_d
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static clearInterpolator(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 43
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorProvider;->clearInterpolator(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public static emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0}, Landroid/support/v4/animation/AnimatorProvider;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
