void leaf() {
  __asm__("xaddl %ecx, %ebx");
  }

void main() {
  leaf();
}