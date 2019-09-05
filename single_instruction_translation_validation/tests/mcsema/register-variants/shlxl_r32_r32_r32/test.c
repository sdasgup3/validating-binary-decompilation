void leaf() {
  __asm__("shlxl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}