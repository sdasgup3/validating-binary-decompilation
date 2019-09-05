void leaf() {
  __asm__("bextrl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}