.class public Landroid/support/v4/media/TransportStateListener;
.super Ljava/lang/Object;
.source "TransportStateListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayingChanged(Landroid/support/v4/media/TransportController;)V
    .registers 2
    .param p1, "controller"    # Landroid/support/v4/media/TransportController;

    .prologue
    .line 30
    return-void
.end method

.method public onTransportControlsChanged(Landroid/support/v4/media/TransportController;)V
    .registers 2
    .param p1, "controller"    # Landroid/support/v4/media/TransportController;

    .prologue
    .line 38
    return-void
.end method
