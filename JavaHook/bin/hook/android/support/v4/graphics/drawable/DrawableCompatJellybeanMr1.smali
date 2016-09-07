.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    .line 63
    sget-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    if-nez v1, :cond_1a

    .line 65
    :try_start_5
    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "getLayoutDirection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 66
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2e

    .line 70
    :goto_18
    sput-boolean v4, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    .line 73
    :cond_1a
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_42

    .line 75
    :try_start_1e
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_37

    move-result v1

    .line 81
    :goto_2d
    return v1

    .line 67
    :catch_2e
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_37
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    const/4 v1, -0x1

    goto :goto_2d
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v6, 0x1

    .line 41
    sget-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    if-nez v1, :cond_1f

    .line 43
    :try_start_5
    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "setLayoutDirection"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 45
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1d} :catch_33

    .line 49
    :goto_1d
    sput-boolean v6, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    .line 52
    :cond_1f
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_32

    .line 54
    :try_start_23
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_3c

    .line 60
    :cond_32
    :goto_32
    return-void

    .line 46
    :catch_33
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3c
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    goto :goto_32
.end method
