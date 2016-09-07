.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
