void leaf() {
  __asm__("rolq %cl, %rbx");
  }

void main() {
  leaf();
}