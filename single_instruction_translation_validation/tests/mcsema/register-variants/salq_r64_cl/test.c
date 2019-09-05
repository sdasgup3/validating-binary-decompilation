void leaf() {
  __asm__("salq %cl, %rbx");
  }

void main() {
  leaf();
}