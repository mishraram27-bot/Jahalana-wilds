(function () {
  const whatsappUrl = "https://wa.me/918387817123";
  const phoneUrl = "tel:+918387817123";

  const actionTargets = new Map([
    ["enquire on whatsapp", whatsappUrl],
    ["check on whatsapp", whatsappUrl],
    ["whatsapp us", whatsappUrl],
    ["whatsapp", whatsappUrl],
    ["whatsapp team", whatsappUrl],
    ["call now", phoneUrl],
    ["call for booking assistance", phoneUrl],
    ["send enquiry", "contact.html"],
    ["send request", "contact.html"],
    ["request booking assistance", "contact.html"],
    ["contact for booking assistance", "contact.html"],
    ["request bespoke quote", "contact.html"],
    ["secure my spot", "contact.html"],
    ["select shared tour", "contact.html"],
    ["inquire for private workshop", "contact.html"],
    ["inquire for photography safari", "contact.html"],
    ["send photography enquiry", "contact.html"],
    ["contact legal desk", "contact.html"],
    ["support conservation", "legal.html"],
    ["view gallery", "gallery.html"],
    ["view itinerary", "masterclass.html"],
    ["leopard guide", "leopards.html"],
    ["submit new shot", "contact.html"],
    ["submit for critique", "contact.html"],
    ["privacy policy", "legal.html"],
    ["read policies", "legal.html"],
    ["new expedition", "booking.html"]
  ]);

  function normalizeLabel(text) {
    return text.replace(/\s+/g, " ").trim().toLowerCase();
  }

  function navigateTo(target) {
    if (/^https?:\/\//.test(target)) {
      window.location.href = target;
      return;
    }
    window.location.href = target;
  }

  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll("button").forEach(function (button) {
      if (button.type === "submit" || button.hasAttribute("onclick")) {
        return;
      }

      const label = normalizeLabel(button.textContent || "");
      const target = actionTargets.get(label);
      if (!target) {
        return;
      }

      button.type = "button";
      button.dataset.actionTarget = target;
      button.style.cursor = "pointer";
      button.addEventListener("click", function () {
        navigateTo(target);
      });
    });
  });
})();
