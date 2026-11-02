.class public final enum Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
.super Ljava/lang/Enum;
.source "InternalStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_OK:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field public static final enum THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_NotYet"

    const-string v2, "Not Yet"

    const-string v3, "Profile request has successfully started but is not completed"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 12
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_OK"

    const-string v2, "Okay"

    const-string v3, "Completed, No errors"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 16
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_Connection_Error"

    const-string v2, "Connection Error"

    const-string v3, "There has been a connection issue, profiling aborted"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 20
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_HostNotFound_Error"

    const-string v2, "Host Not Found"

    const-string v3, "Unable to resolve the host name"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 24
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_NetworkTimeout_Error"

    const-string v2, "Network Timeout"

    const-string v3, "Communications layer timed out"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 28
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_Internal_Error"

    const/4 v2, 0x5

    const-string v3, "Internal Error"

    const-string v4, "Internal Error, profiling incomplete or interrupted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 32
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_HostVerification_Error"

    const/4 v2, 0x6

    const-string v3, "Host Verification Error"

    const-string v4, "Certificate verification failure! Potential MITM attack"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 36
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_Interrupted_Error"

    const/4 v2, 0x7

    const-string v3, "Interrupted"

    const-string v4, "Request was cancelled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 40
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_InvalidOrgID"

    const/16 v2, 0x8

    const-string v3, "Invalid ORG ID"

    const-string v4, "Request contained an invalid org id"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 44
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_ConfigurationError"

    const/16 v2, 0x9

    const-string v3, "Configuration Error"

    const-string v4, "Failed to retrieve configuration from server"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 48
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    const-string v1, "THM_PartialProfile"

    const/16 v2, 0xa

    const-string v3, "Partial Profile"

    const-string v4, "Connection error, only partial profile completed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->label:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->desc:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->label:Ljava/lang/String;

    return-object v0
.end method
