.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsConnectingWorkaround"
.end annotation


# instance fields
.field private mGetStatusCodeMethod:Ljava/lang/reflect/Method;

.field private mStatusConnecting:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_f

    .line 131
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 135
    :cond_f
    :try_start_f
    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const-string v2, "STATUS_CONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 137
    .local v0, "statusConnectingField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I

    .line 138
    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const-string v2, "getStatusCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_2b} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_2b} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_2b} :catch_2c

    .line 144
    .end local v0    # "statusConnectingField":Ljava/lang/reflect/Field;
    :goto_2b
    return-void

    .line 142
    :catch_2c
    move-exception v1

    goto :goto_2b

    .line 141
    :catch_2e
    move-exception v1

    goto :goto_2b

    .line 140
    :catch_30
    move-exception v1

    goto :goto_2b
.end method


# virtual methods
.method public isConnecting(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 150
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_20

    .line 152
    :try_start_8
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    .local v1, "statusCode":I
    iget v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_19} :catch_1f

    if-ne v1, v2, :cond_1d

    const/4 v2, 0x1

    .line 160
    .end local v1    # "statusCode":I
    :goto_1c
    return v2

    .restart local v1    # "statusCode":I
    :cond_1d
    move v2, v3

    .line 153
    goto :goto_1c

    .line 155
    .end local v1    # "statusCode":I
    :catch_1f
    move-exception v2

    :cond_20
    :goto_20
    move v2, v3

    .line 160
    goto :goto_1c

    .line 154
    :catch_22
    move-exception v2

    goto :goto_20
.end method
