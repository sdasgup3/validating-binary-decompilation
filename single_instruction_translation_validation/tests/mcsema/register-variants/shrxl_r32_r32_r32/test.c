void leaf() {
  __asm__("shrxl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}