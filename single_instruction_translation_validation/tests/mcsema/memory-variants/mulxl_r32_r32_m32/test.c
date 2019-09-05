void leaf() {
  __asm__("mulxl (%rdx), %ecx, %ebx");
  }

void main() {
  leaf();
}