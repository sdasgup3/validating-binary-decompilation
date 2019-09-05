void leaf() {
  __asm__("mulxl %ecx, %ebx, %eax");
  }

void main() {
  leaf();
}