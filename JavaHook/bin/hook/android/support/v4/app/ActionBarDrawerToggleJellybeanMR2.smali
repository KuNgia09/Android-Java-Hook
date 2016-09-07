.class Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleJellybeanMR2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleImplJellybeanMR2"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 57
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1d

    .line 58
    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    :goto_b
    const/4 v4, 0x0

    sget-object v5, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    const v6, 0x10102ce

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 66
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-object v3

    .line 60
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1d
    move-object v2, p0

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_b
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .registers 4
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 49
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 51
    :cond_9
    return-object p0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .registers 5
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 42
    :cond_c
    return-object p0
.end method
