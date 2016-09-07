.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioStream:I

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I

.field private final mVolumeControl:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    .line 708
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    .line 709
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    .line 710
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    .line 711
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    .line 712
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .registers 2

    .prologue
    .line 736
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    return v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .prologue
    .line 769
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .registers 2

    .prologue
    .line 724
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    return v0
.end method
