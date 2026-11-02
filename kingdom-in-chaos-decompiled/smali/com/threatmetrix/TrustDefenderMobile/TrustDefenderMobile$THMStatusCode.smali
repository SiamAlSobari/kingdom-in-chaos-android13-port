.class public final enum Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.super Ljava/lang/Enum;
.source "TrustDefenderMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "THMStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field public static final enum THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_NotYet"

    invoke-direct {v0, v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 36
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_OK"

    invoke-direct {v0, v1, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 40
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_Connection_Error"

    invoke-direct {v0, v1, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 44
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_HostNotFound_Error"

    invoke-direct {v0, v1, v6}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 48
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_NetworkTimeout_Error"

    invoke-direct {v0, v1, v7}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 52
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_Internal_Error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 56
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_HostVerification_Error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 60
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_Interrupted_Error"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 64
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_InvalidOrgID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 68
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_ConfigurationError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 72
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    const-string v1, "THM_PartialProfile"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v0

    .line 80
    .local v0, "code":Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->label:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->desc:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1
    .param p0, "status"    # Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    return-object v0
.end method


# virtual methods
.method final coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->label:Ljava/lang/String;

    return-object v0
.end method
