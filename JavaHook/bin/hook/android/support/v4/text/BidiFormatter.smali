.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$1;,
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 83
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 113
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 118
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 215
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    .line 220
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .registers 4
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    .line 262
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    .line 263
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter$1;)V
    .registers 5
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .param p4, "x3"    # Landroid/support/v4/text/BidiFormatter$1;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/support/v4/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/String;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v0

    return v0
.end method

.method private static getExitDir(Ljava/lang/String;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .prologue
    .line 234
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 252
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .registers 2
    .param p0, "rtlContext"    # Z

    .prologue
    .line 243
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    .line 440
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private markAfter(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .prologue
    .line 297
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 299
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 300
    :cond_16
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 305
    :goto_18
    return-object v1

    .line 302
    :cond_19
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 303
    :cond_26
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_18

    .line 305
    :cond_29
    const-string v1, ""

    goto :goto_18
.end method

.method private markBefore(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .prologue
    .line 324
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 326
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 327
    :cond_16
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 332
    :goto_18
    return-object v1

    .line 329
    :cond_19
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 330
    :cond_26
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_18

    .line 332
    :cond_29
    const-string v1, ""

    goto :goto_18
.end method


# virtual methods
.method public getStereoReset()Z
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRtl(Ljava/lang/String;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtlContext()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .param p3, "isolate"    # Z

    .prologue
    .line 376
    if-nez p1, :cond_4

    const/4 v2, 0x0

    .line 394
    :goto_3
    return-object v2

    .line 377
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p2, p1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 378
    .local v0, "isRtl":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz p3, :cond_25

    .line 380
    if-eqz v0, :cond_4a

    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1e
    invoke-direct {p0, p1, v2}, Landroid/support/v4/text/BidiFormatter;->markBefore(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_25
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v0, v2, :cond_50

    .line 384
    if-eqz v0, :cond_4d

    const/16 v2, 0x202b

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :goto_38
    if-eqz p3, :cond_45

    .line 391
    if-eqz v0, :cond_54

    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_3e
    invoke-direct {p0, p1, v2}, Landroid/support/v4/text/BidiFormatter;->markAfter(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 380
    :cond_4a
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1e

    .line 384
    :cond_4d
    const/16 v2, 0x202a

    goto :goto_2d

    .line 388
    :cond_50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 391
    :cond_54
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_3e
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
