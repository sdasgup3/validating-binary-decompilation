void leaf() {
  __asm__("blsrl %ecx, %ebx");
  }

void main() {
  leaf();
}