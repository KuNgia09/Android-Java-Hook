.class public Lcom/example/javahook/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/javahook/MainActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/example/javahook/MainActivity;->test()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private test()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string v0, "real"

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/example/javahook/MainActivity;->setContentView(I)V

    .line 23
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/example/javahook/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    .local v0, "btn":Landroid/widget/Button;
    new-instance v1, Lcom/example/javahook/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/javahook/MainActivity$1;-><init>(Lcom/example/javahook/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
