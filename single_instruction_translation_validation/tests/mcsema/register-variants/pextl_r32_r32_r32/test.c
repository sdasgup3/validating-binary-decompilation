void leaf() {
  __asm__("pextl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}